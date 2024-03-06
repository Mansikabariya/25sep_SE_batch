//Write a program to find the max numbers from the given three numbers using Nested if.


import 'dart:io';

void main()
{
  int? num1,num2,num3;

  print("Enter a number 1 : ");
  num1 = int.parse(stdin.readLineSync()!);

  print("Enter a number 2 : ");
  num2 = int.parse(stdin.readLineSync()!);

  print("Enter a number 3 : ");
  num3 = int.parse(stdin.readLineSync()!);

  if(num1 > num2 && num1 > num3)
  {
    print("$num1 is greater");
  }
  else if(num2 > num1 && num2 > num3)
  {
    print("$num2 is greater");
  }
  else 
  {
    print("$num3 is greater");
  }

}