while true
do
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Quit"

  read -p "Enter your choise " choice

  if [ $choice -eq 1 ]
  then
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    echo Answer: $((num1 + num2))
  elif [ $choice -eq 2 ]
  then
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    echo Answer: $((num1 - num2))
  elif [ $choice -eq 3 ]
  then
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    echo Answer: $((num1 * num2))
  elif [ $choice -eq 4 ]
  then
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    echo Answer: $((num1 / num2))
  elif [ $choice -eq 5 ]
  then
    break
  else
    echo Invalid choice
  fi
done