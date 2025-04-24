#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read year round winner opponent wgoal ogoal
do
  if [[ $year != "year" ]]
  then
    team1_id=$($PSQL "select team_id from teams where name='$winner'")
    team2_id=$($PSQL "select team_id from teams where name='$opponent'")

    if [[ -z $team1_id ]]
    then
      # insert winner
      echo $winner doesnt exist
      INSERT_WINNER_RESULT=$($PSQL "insert into teams(name) values('$winner')")
      echo $INSERT_WINNER_RESULT
    fi

    if [[ -z $team2_id ]]
    then
      # insert winner
      echo $opponent doesnt exist
      INSERT_OPPONENT_RESULT=$($PSQL "insert into teams(name) values('$opponent')")
      echo $INSERT_OPPONENT_RESULT
    fi

    winner_id=$($PSQL "select team_id from teams where name ='$winner' ")
    opponent_id=$($PSQL "select team_id from teams where name='$opponent'")


    INSERT_GAME_RESULT=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($year, '$round', $winner_id, $opponent_id, $wgoal, $ogoal) ")







  fi

done