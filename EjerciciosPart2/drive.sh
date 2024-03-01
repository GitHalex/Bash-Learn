#!/bin/bash
echo "please enter your age"
read AGE
if [ $AGE -lt 16 ]
then
  echo "You are not old enough to drive."
else
  echo "You can drive!"
fi