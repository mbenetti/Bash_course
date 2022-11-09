## Begging of the file

I start every bash with a disclaimer

```bash
  ------------------------------------------
  Year Your Name

  This program is free software: you can redistribute it and/or modify
  it under the terms of the Academic Free License ("AFL") v. 3.0.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE

  https://opensource.org/licenses/afl-3.0.php

  -----------------------------------------------
```

Then script with the following prolog:

```bash
#!/bin/bash  
set -o nounset  
set -o errexit
```

This will take care of two very common errors:

1. Referencing undefined variables (which default to "")
2. Ignoring failing commands

## Location bash in out system

With the command

```bash
$wich bash 
```

we get the location bash in out system

## Remember to enable rights to run the script with

```bash
$chmod +x Intro_to_bash.sh 
```

and with Ctr + / we can comment and uncomment lines on VS Code

## Echo command

```bash
echo Hello World!
```

## Variables

Are Uppercase by convention. What is allowed :

* letters
* numbers and underscores

```bash
NAME="Bob"
```

```bash
echo "My name is $NAME"
```

```bash
echo "My name is ${NAME}"
```

## User input

prompt for the user to input data

```bash
read -p "Enter your name: " NAME
```

```bash
echo "Hello $NAME, nice to meet you!"
```

## Conditionals

### Simple if statement

with `if` we start and with `fi` we finish the conditional.

```bash
if [ "$NAME" == "Brad" ]
then
  echo "Your name is Brad"
fi
```

### If-else statement

```bash
if [ "$NAME" == "Brad" ]
then
  echo "Your name is Brad"
else 
  echo "Your name is NOT Brad"
fi
```

### Else-if (elif)

This is for more thant two options if->then/elif->then/else->fi

```bash
if [ "$NAME" == "Brad" ]
then
  echo "Your name is Brad"
elif [ "$NAME" == "Jack" ]
then  
  echo "Your name is Jack"
else 
  echo "Your name is NOT Brad or Jack"
fi
```

## Comparison with operators

List of logic operators for comparison the value 1 (val1), and value 2 (val2) Possible of valid operations:

```bash
val1 -eq val2
```

Returns true if the values are equal

```bash
val1 -ne val2 
```

Returns true if the values are not equal

```bash
val1 -gt val2 
```

Returns true if val1 is greater than val2

```bash
val1 -ge val2 
```

Returns true if val1 is greater than or equal to val2

```bash
val1 -lt val2 
```

Returns true if val1 is less than val2

```bash
val1 -le val2 
```

Returns true if val1 is less than or equal to val2

Example:

```bash
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
echo "$NUM1 is greater than $NUM2"
else
echo "$NUM1 is less than $NUM2"
fi
```

## Logic related to files and directories

Possible or valid flags:

```bash
-d  file   True if the file is a directory
-e  file   True if the file exists (note that this is not particularly portable, thus -f is generally  used)
-f  file   True if the provided string is a file
-g  file   True if the group id is set on a file
-r  file   True if the file is readable
-s  file   True if the file has a non-zero size
-u    True if the user id is set on a file
-w    True if the file is writable
-x    True if the file is an executable
```

Example:

```bash
FILE="test.txt"
if [ -e "$FILE" ]
then
echo "$FILE exists"
else
echo "$FILE does NOT exist"
fi
```

## Case statement

For example: in case the answer is Y or y or YES or yes

```bash
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
[yY] | [yY][eE][sS])
  echo "You can have a beer"
  ;;
[nN] | [nN][oO])
  echo "Sorry, no drinking"
  ;;
*)
  echo "Please enter y/yes or n/no"
  ;;
esac
```

In case the answer is not valid the third option is for any other input answer

## Simple loop

This example perform a simple loop trough all the names

```bash
NAMES="Brad Kevin Alice Mark" for NAME in $NAMES do echo "Hello $NAME" done
```

Another more useful example would make a loop to rename files. For that we are going to create some files inside the folder "test"

```bash
mkdir test && cd test && touch 1.txt 2.txt 3.txt 
```

run the script from inside the folder with:

```bash
.././01_intro.sh
```

FILE is the variable that contains the list of files, and $FILE is the content of that variable

```bash
FILES=$(ls \*.txt) NEW="new" for FILE in $FILES  
do echo "Renaming $FILE to new-$FILE" mv $FILE $NEW-$FILE done
```

## While loop

Read through a file line by line and print out (with echo)

The variable LINE is the index of the line to read from the file, CURRENT_LINE is a temporary variable where the content of the line is storage, and LINE++ increment the line number by one every iteration the `< "./new-1.txt"` indicate the name of the file

```bash
LINE=1 while read -r CURRENT_LINE do echo "$LINE: $CURRENT_LINE" ((LINE++)) done < "./new-1.txt"
```

## Funtions

First, I declare the function name and between brackets the function method(action to perform) 

```bash
function sayHello(){ echo "Hello World" }
```

To call the function simply name it
```bash
sayHello
```

### Function with parameters

The input parameters for the functions in this case are `$1=Brad` and `$2=36` This function use positional parameters indicated with the $1 and $2

```bash
function greet() { 
	echo "Hello, I am $1 and I am $2" 
} 

greet "Brad" "36"

```

Then run the script and the result will be:

`Hello, I am Brad and I am 36`

Alternatively, you can also pass the parameters to the script, for instance:
```bash
./01_intro.sh Brad 22
```
Will return:

`Hello, I am Brad and I am 22`

## Create folder and write into a file

This will create a directory, and a file in that directory. With echo we insert (>>) text in the file indicated after the operator

```bash
mkdir hello && touch "hello/world.txt" && echo "Hello World" >> "hello/world.txt" && echo "Created hello/world.txt"
```
