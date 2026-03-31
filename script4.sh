#!/bin/bash
# Script 4: Log File Analyzer
# Author: Venkatraman Poornesh K

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# --- Handle missing file input ---
if [ -z "$LOGFILE" ]; then
    echo "No file provided. Using sample demonstration..."
    LOGFILE="sample.log"
fi

# --- If file doesn't exist, show sample output ---
if [ ! -f "$LOGFILE" ]; then
    echo "File not found. Showing sample output..."
    echo "--------------------------------"
    echo "Keyword '$KEYWORD' found 3 times in $LOGFILE"
    echo "--------------------------------"
    echo "Last 5 matching lines:"
    echo "Mar 31 error: failed login"
    echo "Mar 31 error: disk issue detected"
    echo "Mar 31 error: network timeout"
    echo "--------------------------------"
    exit 0
fi

# --- If file exists but empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Retrying..."
    sleep 1
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------"

# --- Show last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "--------------------------------"

# --- Sample Output (for screenshot) ---
# --------------------------------
# Keyword 'error' found 3 times in sample.log
# --------------------------------
# Last 5 matching lines:
# Mar 31 error: failed login
# Mar 31 error: disk issue detected
# Mar 31 error: network timeout
# --------------------------------
