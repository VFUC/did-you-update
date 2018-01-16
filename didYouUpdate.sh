#!/bin/sh

# Path of file to store last update check date
lastUpdateFilePath=~/.lastCheckedForUpdatesAt

# Path of update file
updateFile=runUpdates.sh
scriptDirectory=$(dirname $0)
updateFilePath="$scriptDirectory/$updateFile"

####### MAIN ########

# Create file if it doesn't exist yet
if ! [ -e ${lastUpdateFilePath} ]
then
	touch "${lastUpdateFilePath}"
	echo -e "Created initial 'last update' file to store date of last update at:\n  ${lastUpdateFilePath}"
fi

read lastCheckedDate < ${lastUpdateFilePath} # Get last checked date from file
today=$(date "+%Y-%m-%d") # Today's date

if [[ "${today}" > "${lastCheckedDate}" ]]; # Compare dates
then
	# Last update was more than a day ago
	echo "Your last updates were more than a day ago."

	echo "Do you want to check for updates now? [enter]"

	read answer # stores user input in 'answer' variable

	if [ -z $answer ]; then # answer was empty -> enter
		# Update the update file with today's date
		echo $today > $lastUpdateFilePath

		echo "Checking for updates.."
		sh $updateFilePath
		echo "All done, you're up to date!"

	else # answer was not enter
		echo "Not checking for updates now"
	fi
fi
