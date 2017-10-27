#!/bin/bash

echo Arc-Dark theme for Gimp installer
echo 1. Install only for you
echo 2. Install for every user
read i
if [ "$i" = "1" ]
then
    echo
    echo Files will be copied to ~/.gimp-2.8/themes/
    cp -r ./Gimp-Arc-Dark-Theme ~/.gimp-2.8/themes/
        if [ -d ~/.gimp-2.8/themes/Gimp-Arc-Dark-Theme ]
    then
        echo
        echo Successful copied files
        echo To change theme u need go to:
        echo Edit -\> Preferences -\> Theme
    else
        echo Failed to copy files
    fi

fi

if [ "$i" = "2" ]
then
    echo 
    echo Files will be copied to /usr/share/gimp/*/themes/
    echo U need to be an administrator to copy files there
    sudo cp -r ./Gimp-Arc-Dark-Theme /usr/share/gimp/*/themes/

    if [ -d /usr/share/gimp/*/themes/Gimp-Arc-Dark-Theme ]
    then
        echo
        echo Successful copied files
        echo To change theme u need go to:
        echo Edit -\> Preferences -\> Theme
    else
        echo Failed to copy files
    fi
fi
if [ "$i" -lt "1" ]
then
    echo
    echo Error:
    echo Chose 1 or 2
fi

if [ "$i" -gt "2" ]
then
    echo
    echo Error:
    echo Chose 1 or 2
fi
