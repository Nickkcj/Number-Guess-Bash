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
    INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
    # Retrieve the new user's ID
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    GAMES_PLAYED=0
    BEST_GAME="None"
    
  else
    echo "Welcome back, $USERNAME! You have played $($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'") games, and your best game took $($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'") guesses."
    USER_ID=$(echo "$USER_DATA" | cut -d '|' -f 1)
    GAMES_PLAYED=$(echo "$USER_DATA" | cut -d '|' -f 2)
    BEST_GAME=$(echo "$USER_DATA" | cut -d '|' -f 3)
  fi
}

# Function to play the game
PLAY_GAME() {
  SECRET_NUMBER=$((RANDOM % 1000 + 1))
  echo "Guess the secret number between 1 and 1000:"
  NUMBER_OF_GUESSES=0

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
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
      GAMES_PLAYED=$((GAMES_PLAYED + 1))
      $PSQL "UPDATE users SET games_played=$GAMES_PLAYED WHERE user_id=$USER_ID"

      if [[ "$BEST_GAME" == "None" || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]; then
        $PSQL "UPDATE users SET best_game=$NUMBER_OF_GUESSES WHERE user_id=$USER_ID"

      fi
      
      exit 0
    fi
  done
}

# Main script logic
USER_LOGIN
PLAY_GAME
