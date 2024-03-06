//write a program make a summation of given number.

import 'dart:io';

void main()
{
  double? num,sum=0;

  print("Enter a number : ");
  num = double.parse(stdin.readLineSync()!);

  for(int i=0; i<=10; i++)
  {
    sum = num + 1;
  }
  print("Sum of all digits : $sum");
  
}