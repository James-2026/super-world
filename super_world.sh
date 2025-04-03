#!/bin/bash
sudo dnf install python3 gcc golang-go nodejs g++ -y
#installs dependencies for each code to run
touch hello-bash.sh hello-python3.py hello-javascript.js hello-c.c hello-go.go hello-c++.cpp
#creates each file for each language to have its code contained in
echo "echo 'helloworld but in bash'" > hello-bash.sh
#inserts the code for the script in the bash file
chmod 700 hello-bash.sh
#gives the file read, write and execute permissions but only execute is required here
./hello-bash.sh
#runs the hello-bash.sh script to execute the bash code
echo "print('hello world but in python this time')" > hello-python3.py
#inserts the python code into the hello-python3.py script
chmod 700 hello-python3.py
#gives the python script executable permissions to allow it to be run
python3 hello-python3.py
#runs the python script
echo "console.log('hello to the world from java script')" > hello-javascript.js
#inserts java script code into the .js file to create the script
chmod 700 hello-javascript.js
#permissions once again
node hello-javascript.js
#executes the javascript code
echo '
#include <stdio.h>

int main () {
  printf("hello world in compiled c");
  return 0;
}' > hello-c.c
#writing the simple c program and redirecting it to inout into the hello-c.c file
gcc hello-c.c -o hello-c
#compiling the hello-c.c file into a binary executable labeled hello-c
./hello-c
#running the compiled binary that gcc created
echo '
#include <iostream>

int main() {
  std::cout << "         hello world in c++" << std::endl;
  return 0;
}' > hello-c++.cpp
#writing and redirecting c++ code into a text file
g++ hello-c++.cpp -o hello-c++
#using g++ to build that text file into a binary
chmod 700 hello-c++
#making the binary executable
./hello-c++
#running the compiled executable binary

