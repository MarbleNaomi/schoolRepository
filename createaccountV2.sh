# Inspected by: Naomi Harris
# Inspected at: 24/10/2024
# Errors Found: 2
# Category of error: Typo and unnecessary code
# Description of error: misspelt command, /bin/bash unnecessary usage
# Solution to error: remove usage of /bin/bash, use useradd instead
# Additional changes: replaced password command with -p on useradd, renamed variables for simplicity


#!/bin/bash

read -p "Enter username: " username
read -p "Enter password: " password

sudo useradd -p $password $username