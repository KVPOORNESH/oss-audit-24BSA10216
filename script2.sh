#!/bin/bash
# Script 2

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control built for open collaboration" ;;
    apache2) echo "Apache: powers much of the web" ;;
    mysql) echo "MySQL: database engine for applications" ;;
    vlc) echo "VLC: open media player for all formats" ;;
    firefox) echo "Firefox: open web browser for privacy" ;;
esac
