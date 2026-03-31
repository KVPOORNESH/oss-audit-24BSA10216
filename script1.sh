#!/bin/bash
# Script 1: System Identity Report
# Author: Venkatraman Poornesh K
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Venkatraman Poornesh K"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Output ---
echo "================================"
echo "Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $DATE"
echo "Distro  : $DISTRO"
echo "License : GPL (Linux Kernel)"
echo "================================"

# --- Sample Output (for report screenshot) ---
# ========================================
# Open Source Audit — Venkatraman Poornesh K
# ========================================
# Software: Git
# Kernel  : 5.15.0
# User    : student
# Uptime  : up 2 hours
# Date    : Tue Mar 31
# Distro  : Ubuntu 22.04
# License : GPL (Linux Kernel)
# ========================================
