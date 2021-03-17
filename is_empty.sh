#!/usr/bin/env bash

# if [ -d $1 ]; then
#     echo "Directory exists"
#     if [ "$(ls $1)" ]; then 
#         echo "Files in there"
#     else
#         echo "Only hidden, if anything"
#     fi
# else
#     echo "Directory doesn't exist"
# fi

directory_check(){
    if [ -d $1 ]; then
        if [ "$(ls $1)" ]; then 
            echo "true"
        fi
    fi
}

if [ "$(directory_check $1)" ]; then
    echo "Do something."
fi
