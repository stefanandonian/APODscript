#!/bin/bash

imgLoc=$(curl "https://apod.nasa.gov/apod/astropix.html" | grep "<IMG SRC=" | cut -d "\"" -f 2)
eval curl "https://apod.nasa.gov/"$imgLoc > APOD.jpg

osascript -e 'tell application "System Events" to set picture of every desktop to ("/Users/stefanandonian/Documents/SoftwareDevelopment/BashProjects/APODscript/APOD.jpg" as POSIX file as alias)'
