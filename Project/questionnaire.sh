#!/bin/bash
QUESTION1="What's your name?"
QUESTION2="Where are you from?"

echo $QUESTION1

read NAME
echo Hello $NAME.

echo $QUESTION2

read LOCATION
echo Hello $NAME from $LOCATION