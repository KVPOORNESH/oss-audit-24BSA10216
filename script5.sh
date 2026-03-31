#!/bin/bash

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "Using $TOOL daily shows how collaboration works." >> $OUTPUT
echo "Freedom to me means $FREEDOM." >> $OUTPUT
echo "I will build $BUILD and share it with the world." >> $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT
