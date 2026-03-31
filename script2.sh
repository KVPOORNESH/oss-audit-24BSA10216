#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Venkatraman Poornesh K

# --- Variable ---
PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "----------------------------"

# --- Check if package exists ---
if command -v "$PACKAGE" >/dev/null 2>&1; then
    echo "$PACKAGE is installed."

    # Show version
    $PACKAGE --version

    # Extra details (if dpkg exists)
    if command -v dpkg >/dev/null 2>&1; then
        dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Description'
    fi
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# --- Case Statement ---
case "$PACKAGE" in
    git)
        echo "Git: distributed version control built for open collaboration"
        ;;
    apache2)
        echo "Apache: web server that powers much of the internet"
        ;;
    mysql)
        echo "MySQL: open-source database for applications"
        ;;
    vlc)
        echo "VLC: open media player for all formats"
        ;;
    firefox)
        echo "Firefox: open web browser focused on privacy"
        ;;
    *)
        echo "Unknown package"
        ;;
esac

echo "----------------------------"

# --- Sample Output (for screenshot) ---
# Checking package: git
# ----------------------------
# git is installed.
# git version 2.34.1
# Version: 2.34.1
# Description: fast distributed version control system
#
# Git: distributed version control built for open collaboration
# ----------------------------
