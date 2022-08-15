#!/bin/sh
echo "Type something in:"
read THING

if [ "$THING" = "tea" ]; then
	echo "keep calm and drink $THING"
elif [ "$THING" = "coffee" ]; then
	echo "go mad and drink $THING"
else
	echo "well alright then drink $THING"
fi
