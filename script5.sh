#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Venkatraman Poornesh K

echo "----------------------------------------"
echo " Open Source Manifesto Generator"
echo "----------------------------------------"
echo ""

# --- User Inputs ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Variables ---
DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_${USER}.txt"

# --- Generate Manifesto ---
echo "----------------------------------------" > "$OUTPUT"
echo "Open Source Manifesto" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: $USER" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I believe that open source is a powerful idea." >> "$OUTPUT"
echo "Using tools like $TOOL shows how collaboration works in real life." >> "$OUTPUT"
echo "For me, freedom means $FREEDOM, and it should be available to everyone." >> "$OUTPUT"
echo "In the future, I want to build $BUILD and share it with the community." >> "$OUTPUT"
echo "Open source helps innovation grow faster and benefits everyone." >> "$OUTPUT"

echo "" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"

# --- Display Output ---
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"

# --- Sample Output (for screenshot) ---
# ----------------------------------------
# Open Source Manifesto
# Date: 31 March 2026
# Author: student
# ----------------------------------------
#
# I believe that open source is a powerful idea.
# Using tools like Git shows how collaboration works in real life.
# For me, freedom means sharing, and it should be available to everyone.
# In the future, I want to build a useful app and share it with the community.
# Open source helps innovation grow faster and benefits everyone.
# ----------------------------------------
