//Write a program to find out the max from given number

import 'dart:io';

void main()
{
  double num,sum=0,FD,LD;

  print("Enter a number : ");
  num = double.parse(stdin.readLineSync()!);

  FD = num;
  LD = num % 10;

  while(num <= 10)
  {
    num = num / 10;
  }
  FD = num;
  sum = FD + LD;

  print("Sum of First and Last digit of number : $sum");
}