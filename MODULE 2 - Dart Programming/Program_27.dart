//Write a program you have to find the factorial of given number.

import 'dart:io';

void main()
{
  int? num,fact=1;

  print("Enter a number : ");
  num = int.parse(stdin.readLineSync()!);

  for(int i=1; i<=num; i++)
  {
    fact = fact! * i;
  }
  print("Factorial of given number : $fact");
}