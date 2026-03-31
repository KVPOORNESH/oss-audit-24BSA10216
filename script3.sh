#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Venkatraman Poornesh K

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "----------------------"

# --- Git Config Check ---
echo "Checking Git configuration file..."

if [ -f "$HOME/.gitconfig" ]; then
    PERMS=$(ls -l "$HOME/.gitconfig" | awk '{print $1, $3, $4}')
    SIZE=$(du -h "$HOME/.gitconfig" 2>/dev/null | cut -f1)
    echo "~/.gitconfig => Permissions: $PERMS | Size: $SIZE"
else
    echo "Git config file (~/.gitconfig) not found"
fi

echo "----------------------"

# --- Sample Output (for screenshot) ---
# Directory Audit Report
# ----------------------
# /etc => Permissions: drwxr-xr-x root root | Size: 4.0M
# /var/log => Permissions: drwxr-xr-x root root | Size: 2.1M
# /home => Permissions: drwxr-xr-x user user | Size: 500M
# /usr/bin => Permissions: drwxr-xr-x root root | Size: 120M
# /tmp => Permissions: drwxrwxrwt root root | Size: 10M
# ----------------------
# Checking Git configuration file...
# ~/.gitconfig => Permissions: -rw-r--r-- user user | Size: 1K
# ----------------------
