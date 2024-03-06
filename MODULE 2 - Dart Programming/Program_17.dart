//Write a program of Addition, Subtraction, Multiplication and Division using Switch case.

import 'dart:io';

void main()
{
  double? num1, num2;
  String? Choice;

  print("Enter a number 1 : ");
  num1 = double.parse(stdin.readLineSync()!);

  print("Enter a number 2 : ");
  num2 = double.parse(stdin.readLineSync()!);

  print("Enter your Choice : ");
  Choice = stdin.readLineSync()!;

  switch(Choice)
  {
    case '+':
      print("Addition = ${num1 + num2}");
      break;

    case '-':
      print("Subtraction = ${num1 - num2}");
      break;

    case '*':
      print("Multiplication = ${num1 * num2}");
      break;

    case '/':
      print("Division = ${num1/num2}");
      break;

    default:
      print("Invalid Choice");
  }
}