#!/bin/bash

# Connect to the salon database
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

# Arrays of customer names and phone numbers (20 customers)
CUSTOMER_NAMES=("Alice" "Bob" "Charlie" "David" "Emma" "Frank" "Grace" "Henry" "Ivy" "Jack" \
               "Kate" "Leo" "Mia" "Noah" "Olivia" "Paul" "Quinn" "Ryan" "Sophia" "Tom")
PHONE_NUMBERS=("555-1001" "555-1002" "555-1003" "555-1004" "555-1005" "555-1006" "555-1007" "555-1008" "555-1009" "555-1010" \
              "555-1011" "555-1012" "555-1013" "555-1014" "555-1015" "555-1016" "555-1017" "555-1018" "555-1019" "555-1020")

# Array of 10 services
SERVICE_NAMES=("Haircut" "Hair Coloring" "Shaving" "Facial" "Manicure" "Pedicure" "Massage" "Waxing" "Scalp Treatment" "Beard Trim")

# Array of appointment times
TIMES=("9:00 AM" "9:30 AM" "10:00 AM" "10:30 AM" "11:00 AM" "11:30 AM" "12:00 PM" "12:30 PM" "1:00 PM" "1:30 PM" \
       "2:00 PM" "2:30 PM" "3:00 PM" "3:30 PM" "4:00 PM" "4:30 PM" "5:00 PM" "5:30 PM" "6:00 PM")

# Insert services if not already in database
for SERVICE in "${SERVICE_NAMES[@]}"
do
  EXISTS=$($PSQL "SELECT service_id FROM services WHERE name='$SERVICE'")
  if [[ -z $EXISTS ]]; then
    $PSQL "INSERT INTO services (name) VALUES ('$SERVICE')"
    echo "Inserted service: $SERVICE"
  fi
done

# Insert customers if not already in database
for ((i=0; i<${#CUSTOMER_NAMES[@]}; i++))
do
  CUSTOMER_NAME=${CUSTOMER_NAMES[$i]}
  CUSTOMER_PHONE=${PHONE_NUMBERS[$i]}
  
  EXISTS=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  if [[ -z $EXISTS ]]; then
    $PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')"
    echo "Inserted customer: $CUSTOMER_NAME ($CUSTOMER_PHONE)"
  fi
done

# Get customer and service IDs
CUSTOMER_IDS=($($PSQL "SELECT customer_id FROM customers"))
SERVICE_IDS=($($PSQL "SELECT service_id FROM services"))

# Insert 50 random appointments
for ((i=0; i<50; i++))
do
  RANDOM_CUSTOMER=${CUSTOMER_IDS[$(( RANDOM % ${#CUSTOMER_IDS[@]} ))]}
  RANDOM_SERVICE=${SERVICE_IDS[$(( RANDOM % ${#SERVICE_IDS[@]} ))]}
  RANDOM_TIME=${TIMES[$(( RANDOM % ${#TIMES[@]} ))]}

  $PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($RANDOM_CUSTOMER, $RANDOM_SERVICE, '$RANDOM_TIME')"
  echo "Inserted appointment: Customer $RANDOM_CUSTOMER, Service $RANDOM_SERVICE at $RANDOM_TIME"
done
