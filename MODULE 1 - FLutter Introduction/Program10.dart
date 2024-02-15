//Write a program to chech the given number is Positive or Negative.

import 'dart:io';

void main()
{
  int? num;

  print("Enter a number : ");
  num = int.parse(stdin.readLineSync()!);

  if(num>0)
  {
    print("Positive nunber");
  }
  else 
  {
    print("Negative number");
  }
}