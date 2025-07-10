#!/bin/bash

#Enter the project name
echo -n "Enter Project Name: "
read projectname

#create root folder
mkdir $projectname
echo "Root folder created..."
cp index.html $projectname/index.html 
echo "File has been copied..."
cd $projectname

#adding directories in the main project files (for now : mvc files)
mkdir model
mkdir controller
mkdir views
cd views 
mkdir css
cd css
cp ../../../main.css main.css  
cd ..
mkdir js
mkdir img
echo "Project has been successfully created..."


