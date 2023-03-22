#/bin/bash


echo "Enter three integers:"
read num1 num2 num3


if [[ $((num1 + num2 + num3)) -eq 0 ]]; then
  echo "The sum of $num1, $num2, and $num3 is zero"
else
  echo "The sum of $num1, $num2, and $num3 is not zero"
fi
