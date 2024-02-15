// Write a program to make addition, subtraction, multiplication and division of two numbers.

import 'dart:io';

void main()
{
  int? num1, num2;

  print("Enter a number 1 : ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter a number 2 : ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Addition of $num1 and $num2 = ${num1+num2}");
  
  print("Subtraction of $num1 and $num2 = ${num1-num2}");

  print("Multiplication of $num1 and $num2 = ${num1*num2}");

  print("Division of $num1 and $num2 = ${num1/num2}");

}
