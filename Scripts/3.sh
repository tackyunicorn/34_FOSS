#!/bin/bash

echo "Currently logged user: $USER"
echo "Login Name: $LOGNAME"
echo "Current Shell: $SHELL"
echo "Home Directory: $HOME"
echo "Operating System: $OSTYPE"
echo "Current Path Setting: $PATH"
echo -n "Current Working Directory: "
pwd
echo -n "Currently logged number of users: "
users | wc -w
