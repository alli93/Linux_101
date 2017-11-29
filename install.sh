#!/bin/bash

hline="####################################################################################\n"
# Store and display start-of-script date and time
datetime_start=$(date)
printf "Start of execution: $datetime_start\n"

# Welcome message
printf "Welcome $USER\n"
printf "This script will install all necessary programs and dependencies for the HGOP course\n"

printf "$hline"

# Store and display linux distribution information
LINUX_VERSION=$(grep -E '^(NAME|VERSION)' /etc/os-release)
printf "OS info:\n$LINUX_VERSION\n"

printf "$hline"

# Continue installation prompt
read -p "Would you like to continue (y/Y)? " CONTINUE_INSTALLATION

# Abort installation if CONTINUE_INSTALLATION is not (y/Y)
if [[ $CONTINUE_INSTALLATION != "y" ]] && [[ $CONTINUE_INSTALLATION != "Y" ]]
then
	printf "Aborting installation...\n"
	exit
fi

printf "Installation start...\n"

# Ensure apt-get is set to work with HTTP sources
sudo apt-get install apt-transport-https

### Sublime Text 3 ###
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text



# Store and display end-of-script date and time
datetime_end=$(date)
printf "End of execution: $datetime_end\n"
printf "Elapsed run-time: $SECONDS seconds\n"

