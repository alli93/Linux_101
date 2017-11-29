#!/bin/bash

# Store and display start-of-script date and time
datetime_start=$(date)
printf "Start of execution: $datetime_start\n"

# Welcome message. Will be edited with further installations
printf "Welcome $USER\n"
printf "This script will install the Sublime Text Editor, along with the Git RVC\n\n"

# Store and display linux distribution information
LINUX_VERSION=$(grep -E '^(NAME|VERSION)' /etc/os-release)
printf "OS info:\n$LINUX_VERSION\n"

# Continue installation prompt
read -p "Would you like to continue (y/Y)? " CONTINUE_INSTALLATION

# Abort installation if CONTINUE_INSTALLATION is not (y/Y)
if [[ $CONTINUE_INSTALLATION != "y" ]] && [[ $CONTINUE_INSTALLATION != "Y" ]]
then
	printf "Aborting installation...\n"
	exit
fi

printf "Installation start...\n"



# Store and display end-of-script date and time
datetime_end=$(date)
printf "End of execution: $datetime_end\n"
printf "Elapsed run-time: $SECONDS seconds\n"

