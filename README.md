

<img align="left" src="https://images.unsplash.com/photo-1537432376769-00f5c2f4c8d2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1850&q=80">

###### Source: https://unsplash.com/

# Introduction to Bash scripting

This repository follow the tutorial on (https://youtu.be/v-F3YLd6oMw) created by Traversy Media.

All the additions and modifications have an educational purpose. The script can be used on the Ubuntu WSL. 

## How to use this repo

* first clone the repo inside your WSL (Linux sub system for Windows):

`git clone https://github.com/mbenetti/Bash_course.git `

* Within the folder Bash_course run the following command:

` code . `

* Follow the file in numeric order by uncommenting lines, saving the file and run the scrip with:

` ./Intro_to_bash.sh `
 
In case to have an error when you run the script, please check the first two point of the file:

* With the command `which bash` we get the location bash in out system (in my case it was: `/usr/bin/bash`) and change the first line of the file accordingly.

* Remember to enable the rights to run the script with `chmod +x Intro_to_bash.sh`
