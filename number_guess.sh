#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

# Function to handle user login
USER_LOGIN() {
  echo "Enter your username:"
  read USERNAME

  # Check if the username exists in the database
  USER_DATA=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME'")

  if [[ -z "$USER_DATA" ]]; then
    # If no data is found, it's a new user
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    # Insert new user into the database
    $PSQL "INSERT INTO users (username) VALUES ('$USERNAME')"
    # Retrieve the new user's ID
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    GAMES_PLAYED=0
    BEST_GAME="None"
  else
    # If user exists, extract their data directly using SQL queries
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
}

# Function to play the game
PLAY_GAME() {
  SECRET_NUMBER=$((RANDOM % 1000 + 1))
  echo "Guess the secret number between 1 and 1000:"
  NUMBER_OF_GUESSES=1

  while true; do
    read GUESS

    # Validate input
    if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      continue
    fi

    ((NUMBER_OF_GUESSES++))
    # Compare guess
    if [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo "It's lower than that, guess again:"
    else
      GAMES_PLAYED=$((GAMES_PLAYED + 1))
      $PSQL "UPDATE users SET games_played=$GAMES_PLAYED WHERE user_id=$USER_ID" > /dev/null

      if [[ "$BEST_GAME" == "None" || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]; then
        $PSQL "UPDATE users SET best_game=$NUMBER_OF_GUESSES WHERE user_id=$USER_ID" > /dev/null
      fi
      echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      exit 0
    fi
  done
}

# Main script logic
USER_LOGIN
PLAY_GAME

