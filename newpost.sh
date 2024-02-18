#!/bin/bash

# Usage: ./newpost.sh "My New Post Title"

# Configuration
DIR="_posts"
EXT=".md"
DATE=`date +%Y-%m-%d`
TIME=`date +%H:%M:%S`
POSTDATE="$DATE $TIME"

# Replace spaces in the title with dashes
TITLE=$(echo $1 | tr " " "-")

# Create filename
FILENAME="$DATE-$TITLE$EXT"

# Full path for the new post
FULLPATH="$DIR/$FILENAME"

# Create a new Markdown file and add front matter
echo "---" > $FULLPATH
echo "layout: post" >> $FULLPATH
echo "title: \"$1\"" >> $FULLPATH
echo "date: $POSTDATE -0000" >> $FULLPATH
echo "---" >> $FULLPATH

# Open the new file in the default editor
open $FULLPATH

echo "New post created: $FULLPATH"
