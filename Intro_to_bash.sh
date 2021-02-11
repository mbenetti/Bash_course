#! /usr/bin/bash
# 0) With the command $wich bash we get the location bash in out system

# 1) Remember to enable rights to run the script with $chmod +x Intro_to_bash.sh 
#   and with Ctr+/ we can comment and uncomment lines on VS Code

# 2) ECHO COMMAND

# echo Hello World!

# 3) VARIABLES are Uppercase by convention. What is allowed are : letters, numbers and underscores

# NAME="Bob"
# echo "My name is $NAME"
# echo "My name is ${NAME}"

# 4) USER INPUT, p promt the user

# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"

# 5) Conditionals

# 5-1) SIMPLE IF STATEMENT
# with `if` we start and with `fi` we finish the conditional.
# if [ "$NAME" == "Brad" ]
# then
#   echo "Your name is Brad"
# fi

# 5-2) IF-ELSE STATEMENT
# if [ "$NAME" == "Brad" ]
# then
#   echo "Your name is Brad"
# else 
#   echo "Your name is NOT Brad"
# fi

# 5-3) ELSE-IF (elif). This is for more thant two options if->then/elif->then/else->fi
# if [ "$NAME" == "Brad" ]
# then
#   echo "Your name is Brad"
# elif [ "$NAME" == "Jack" ]
# then  
#   echo "Your name is Jack"
# else 
#   echo "Your name is NOT Brad or Jack"
# fi

# 6) COMPARISON WITH OPERATORS

# List of logic operators for comparison the value 1 (val1), and value 2 (val2)
# Possible of valid operations:
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
####

# Example:
# NUM1=3
# NUM2=5
# if [ "$NUM1" -gt "$NUM2" ]
# then
#   echo "$NUM1 is greater than $NUM2"
# else
#   echo "$NUM1 is less than $NUM2"
# fi

# 7) CONDITIONS RELATED TO FILES AND DIRECTORIES 

# Possible or valid flags:
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

# Example:
# FILE="test.txt"
# if [ -e "$FILE" ]
# then
#   echo "$FILE exists"
# else
#   echo "$FILE does NOT exist"
# fi

# 8) CASE STATEMENT, for example: in case the answer is Y or y or YES or yes

# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in 
#   [yY] | [yY][eE][sS])
#     echo "You can have a beer"
#     ;;
#   [nN] | [nN][oO])
#     echo "Sorry, no drinking"
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
#     ;;
# esac

# In case the answer is not valid the third option is for any other imput answer 

# 9) SIMPLE FOR LOOP
# This example perfom a simple loop trough all the names

# NAMES="Brad Kevin Alice Mark"
# for NAME in $NAMES
#   do
#     echo "Hello $NAME"
# done

# ANOTHER MORE USEFUL EXAMPLE IS A LOOP TO RENAME FILES
# Run touch 1.txt 2.txt 3.txt

# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES  
#   do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# LINE=1
# while read -r CURRENT_LINE
#   do
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done < "./new-1.txt"

# FUNCTION
# function sayHello() {
#   echo "Hello World"
# }
# sayHello

# FUNCTION WITH PARAMS
# function greet() {
#   echo "Hello, I am $1 and I am $2"
# }

# greet "Brad" "36"

# CREATE FOLDER AND WRITE TO A FILE
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Created hello/world.txt"