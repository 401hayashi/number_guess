#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

# Verificar si el usuario ya existe
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ -z $USER_ID ]]
then
    # Crear nuevo usuario
    INSERT_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME') RETURNING user_id")
    # Extraer solo el ID del usuario del resultado
    USER_ID=$(echo "$INSERT_RESULT" | sed 's/INSERT 0 1//g' | tr -d '[:space:]')
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else
    # Obtener estadísticas del usuario
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generar número aleatorio entre 1 y 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0

echo "Guess the secret number between 1 and 1000:"

while true; do
    read GUESS
    
    # Validar que el input sea un número
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
        echo "That is not an integer, guess again:"
        continue
    fi
    
    ((GUESS_COUNT++))
    
    if (( GUESS < SECRET_NUMBER ))
    then
        echo "It's higher than that, guess again:"
    elif (( GUESS > SECRET_NUMBER ))
    then
        echo "It's lower than that, guess again:"
    else
        echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
        
        # Guardar el juego en la base de datos (redirigiendo salida a /dev/null)
        $PSQL "INSERT INTO games(user_id, secret_number, guesses) VALUES($USER_ID, $SECRET_NUMBER, $GUESS_COUNT)" > /dev/null 2>&1
        
        break
    fi
done