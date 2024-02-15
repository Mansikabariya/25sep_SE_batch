//Write a program to swap two numbers without using third variable.

import 'dart:io';

void main()
{
  double? num1,num2;

  print("Enter a number 1 : ");
  num1 = double.parse(stdin.readLineSync()!);

  print("Enter a number 2 : ");
  num2 = double.parse(stdin.readLineSync()!);

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2 ;

  print("Before swapping num1 = $num1 and num2 = $num2");
  print("After swapping num1 = $num2 and num2 = $num1");
}