#!/bin/bash

# Database connection
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt for username
echo "Enter your username:"
read username

# Check if user exists
user_data=$($PSQL "SELECT games_played, best_game FROM game_results WHERE username='$username';")

if [[ -z "$user_data" ]]; then
  # New user
  echo "Welcome, $username! It looks like this is your first time here."
  $PSQL "INSERT INTO game_results(username, games_played, best_game) VALUES('$username', 0, NULL);"
else
  # Returning user
  games_played=$(echo "$user_data" | cut -d '|' -f1)
  best_game=$(echo "$user_data" | cut -d '|' -f2)
  if [[ -z "$best_game" ]]; then
    echo "Welcome back, $username! You have played $games_played games, and you haven't won any games yet."
  else
    echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
  fi
fi

# Generate secret number (1-1000)
secret_number=$(( RANDOM % 1000 + 1 ))
#secret_number=5
number_of_guesses=0

# Start game
echo "Guess the secret number between 1 and 1000:"

while true; do
  read guess

  # Validate integer input
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Increment guesses for valid input
  number_of_guesses=$(( number_of_guesses + 1 )) 

  if [ "$guess" -eq "$secret_number" ]; then
    # Print exact winning message and update database
    echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
    UPDATE_RESULT=$($PSQL "UPDATE game_results SET games_played = games_played + 1, best_game = CASE WHEN best_game IS NULL OR $number_of_guesses < best_game THEN $number_of_guesses ELSE best_game END WHERE username='$username';")
    break
  elif [ "$guess" -lt "$secret_number" ]; then
    echo "It's higher than that, guess again:"
  else
    echo "It's lower than that, guess again:"
  fi
done