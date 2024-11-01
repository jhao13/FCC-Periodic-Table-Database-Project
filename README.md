# 💻 FCC-Periodic-Table-Database-Project
FreeCodeCamp project: Creating a Bash script to get information about chemical elements from a periodic table database

## Project Goal
Create a Bash script to get information about chemical elements from a periodic table database.
Project made as part of the FreeCodeCamp Relational Databases Beta Certificate course

## Process
Connected to the periodic database provided by FreeCodeCamp, cleaned and fixed mistakes within the database, and added appropriate constraints and inserted extra chemical elements into the database.
Created a Bash script (version controlled with git) that accepts an argument in the form of an atomic number, symbol, or name of an element and outputs some information about the given element.

View database SQL file: 
View bash script: elements.sh

## FreeCodeCamp Porject Instructions

### Part 1: Fix the database

There are some mistakes in the database that need to be fixed or changed. See the user stories below for what to change.

### Part 2: Create your git repository

Make a small bash program. The code needs to be version controlled with git, so you will need to turn the suggested folder into a git repository.

### Part 3: Create the script

Lastly, make a script that accepts an argument in the form of an atomic number, symbol, or name of an element and outputs some information about the given element.

### Tasks completed

<ul>
  <li>Rename the weight column to atomic_mass</li>
  <li>Rename the melting_point column to melting_point_celsius and the boiling_point column to boiling_point_celsius</li>
  <li>The melting_point_celsius and boiling_point_celsius columns should not accept null values</li>
  <li>Add the UNIQUE constraint to the symbol and name columns from the elements table</li>
  <li>The symbol and name columns should have the NOT NULL constraint</li>
  <li>Set the atomic_number column from the properties table as a foreign key that references the column of the same name in the elements table</li>
  <li>Create a types table that will store the three types of elements</li>
  <li>The types table should have a type_id column that is an integer and the primary key</li>
  <li>The types table should have a type column that's a VARCHAR and cannot be null. It will store the different types from the type column in the properties table</li>
  <li>Add three rows to your types table whose values are the three different types from the properties table</li>
  <li>The properties table should have a type_id foreign key column that references the type_id column from the types table. It should be an INT with the NOT NULL constraint</li>
  <li>Each row in your properties table should have a type_id value that links to the correct type from the types table</li>
  <li>Capitalize the first letter of all the symbol values in the elements table. Be careful to only capitalize the letter and not change any others</li>
  <li>Remove all the trailing zeros after the decimals from each row of the atomic_mass column. You may need to adjust a data type to DECIMAL for this. Be careful not to change the value</li>
  <li>Add the element with atomic number 9 to your database. Its name is Fluorine, symbol is F, mass is 18.998, melting point is -220, boiling point is -188.1, and it's a nonmetal</li>
  <li>Add the element with atomic number 10 to your database. Its name is Neon, symbol is Ne, mass is 20.18, melting point is -248.6, boiling point is -246.1, and it's a nonmetal</li>
  <li>Create a periodic_table folder in the project folder and turn it into a git repository with git init</li>
  <li>Your repository should have a main branch with all your commits</li>
  <li>The periodic_table repo should have at least five commits</li>
  <li>Create an element.sh file in your repo folder for the program I want you to make</li>
  <li>Script (.sh) file should have executable permissions</li>
  <li>If you run ./element.sh, it should output Please provide an element as an argument. and finish running.</li>
  <li>If you run ./element.sh 1, ./element.sh H, or ./element.sh Hydrogen, it should output The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.</li>
  <li>If you run ./element.sh script with another element as input, you should get the same output but with information associated with the given element.</li>
  <li>If the argument input to your element.sh script doesn't exist as an atomic_number, symbol, or name in the database, the output should be I could not find that element in the database.</li>
  <li>The message for the first commit in your repo should be Initial commit</li>
  <li>The rest of the commit messages should start with fix:, feat:, refactor:, chore:, or test:</li>
  <li>You should delete the non existent element, whose atomic_number is 1000, from the two tables</li>
  <li>Your properties table should not have a type column</li>
  <li>You should finish your project while on the main branch. Your working tree should be clean and you should not have any uncommitted changes</li>
</ul> 

