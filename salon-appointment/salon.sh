#!/bin/bash

# Connect to the salon database
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

# Function to display available services
DISPLAY_SERVICES() {
  echo -e "\nAvailable services:"
  SERVICES=$($PSQL "SELECT service_id, name FROM services")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done
}

# Function to schedule an appointment
SCHEDULE_APPOINTMENT() {
  # Display services
  DISPLAY_SERVICES

  # Prompt user for service selection
  echo -e "\nEnter the service ID you want:"
  read SERVICE_ID_SELECTED

  # Validate service selection
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  if [[ -z $SERVICE_NAME ]]; then
    echo -e "\nInvalid service selection. Please try again."
    SCHEDULE_APPOINTMENT
  else
    # Prompt user for phone number
    echo -e "\nEnter your phone number:"
    read CUSTOMER_PHONE

    # Check if customer exists
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    # If customer does not exist, ask for name and insert into database
    if [[ -z $CUSTOMER_NAME ]]; then
      echo -e "\nEnter your name:"
      read CUSTOMER_NAME
      INSERT_CUSTOMER=$($PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
    fi

    # Get customer_id
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

    # Prompt user for appointment time
    echo -e "\nEnter the time for your appointment:"
    read SERVICE_TIME

    # Insert appointment into database
    INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments (customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

    # Confirm the appointment
    SERVICE_NAME=$(echo $SERVICE_NAME | sed -E 's/^ *| *$//g')  # Trim whitespace
    CUSTOMER_NAME=$(echo $CUSTOMER_NAME | sed -E 's/^ *| *$//g')  # Trim whitespace
    echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

# Start the script
SCHEDULE_APPOINTMENT
