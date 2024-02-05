#! /bin/bash
# Version 1.0
# This runs apt-get update and upgrade
#   while outputing the results to logs.

# Get the date and time for the update log.
TODAY=$(date +"%F_%H%M")

# Display a blank line so that the next output stands out
echo " "

# Start update log with the Date and Time
date |& tee -a ~/logs/update/update"$TODAY".txt

# Update and log output (with any errors).
sudo apt-get update |& tee -a ~/logs/update/update"$TODAY".txt

# Display a blank line so that the next output stands out
echo " "

# Start upgrade log with the Date and Time
date |& tee -a ~/logs/update/upgrade"$TODAY".txt

# Upgrade and log ouput (with any errors).
sudo apt-get upgrade -y |& tee -a ~/logs/update/upgrade"$TODAY".txt

echo "Finished Update/Upgrade"

# Display a blank line so that the next ouput stands out
echo " "
