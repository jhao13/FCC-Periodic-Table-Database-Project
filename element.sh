if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
SYMBOL=$1

#display element data function
DISPLAY_DATA(){
  if [[ -z $1 ]]
    then
      #if element is not in database
      echo "I could not find that element in the database."
    else
      #$1 is the atomic number argument passed to function
      #queries below will search the DB and assign the element value to each variable.
      ELEMENT_NUMBER=$1
      ELEMENT_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ELEMENT_NUMBER")
      ELEMENT_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ELEMENT_NUMBER")
      ELEMENT_TYPE=$($PSQL "SELECT type FROM properties LEFT JOIN types USING(type_id) WHERE atomic_number=$ELEMENT_NUMBER")
      ELEMENT_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ELEMENT_NUMBER")
      ELEMENT_MP=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ELEMENT_NUMBER")
      ELEMENT_BP=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ELEMENT_NUMBER")
      
      #final echo statement with element information
      echo "The element with atomic number $ELEMENT_NUMBER is $ELEMENT_NAME ($ELEMENT_SYMBOL). It's a $ELEMENT_TYPE, with a mass of $ELEMENT_MASS amu. $ELEMENT_NAME has a melting point of $ELEMENT_MP celsius and a boiling point of $ELEMENT_BP celsius."
  fi
}

# if input argument is not a number
if [[ ! $SYMBOL =~ ^[0-9]+$ ]]
  then
    #if input argument is greater than 2 letters
    n=${#SYMBOL}
    if [[ $n > 2 ]]
      then
      #get element by full name
      ELEMENT=$($PSQL "SELECT atomic_number FROM elements WHERE name='$SYMBOL'")
      DISPLAY_DATA $ELEMENT #pass atomic number to display_data function
      else
      #get element by atomic symbol
      ELEMENT=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$SYMBOL'")
      DISPLAY_DATA $ELEMENT #pass atomic number to display_data function
    fi

  else
    #get element by atomic number
    ELEMENT=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$SYMBOL")
    DISPLAY_DATA $ELEMENT #pass atomic number to display_data function
fi

fi