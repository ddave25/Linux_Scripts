#i/usr/bin/bash

read decision

if [[ ($decision == 'Y')||($decision == 'y') ]]
then
	echo "YES"

elif [[ ($decision == 'N')||($decision == 'n') ]]
then
	echo "NO"
fi
