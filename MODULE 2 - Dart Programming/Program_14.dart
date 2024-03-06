//Write a program to find the Max number from the given three number using Ternary Operator.

import 'dart:io';

void main()
{
  int? num1, num2, num3;

  print("Enter a number 1 : ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter a number 2 : ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter a numebr 3 : ");
  num3 = int.parse(stdin.readLineSync()!);

  (num1 > num2) ? ((num1 > num3) ? print("$num1 is max") : print("$num3 is max")) : 
    ((num2 > num3) ? print("$num2 is max") : print("$num3 is max"));

  
}