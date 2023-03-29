#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read username

username_avail=$($PSQL "SELECT username FROM users WHERE username = '$username'")

if [[ -z $username_avail ]]
then
  insert_user=$($PSQL "INSERT INTO users(username) VALUES('$username')")
  echo "Welcome, $username! It looks like this is your first time here."
else
  user_id=$($PSQL "SELECT user_id FROM users WHERE username = '$username'")
  games_played=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $user_id")
  best_game=$($PSQL "SELECT MIN(number_guesses) FROM games WHERE user_id = $user_id")

  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
fi

RANDOM_NUM=$((1 + $RANDOM % 1000))

GUESS=1

echo "Guess the secret number between 1 and 1000:"

while read NUM
do
  if [[ ! $NUM =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $NUM -eq $RANDOM_NUM ]]
    then
      break;
    elif [[ $NUM -gt $RANDOM_NUM ]]
    then
      echo "It's lower than that, guess again:"
    elif  [[ $NUM -lt $RANDOM_NUM ]]
    then
      echo "It's higher than that, guess again:"
    fi
  fi
  GUESS=$(( $GUESS +1 ))
done


if [[ $GUESS == 1 ]]
then
  echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
else
  echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUM. Nice job!"
fi


user_id=$($PSQL "SELECT user_id FROM users WHERE username = '$username'")

insert_games=$($PSQL "INSERT INTO games(number_guesses, user_id) VALUES($GUESS,$user_id)")
