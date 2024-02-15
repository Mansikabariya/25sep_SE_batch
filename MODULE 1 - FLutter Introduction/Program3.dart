//Write a program to make a square and cube of number.

import 'dart:io';

void main()
{
  int? num,Square,Cube;

  print("Enter a number : ");
  num = int.parse(stdin.readLineSync()!);

  Square = num*num;

  print("Square of $num = $Square");

  Cube = num*num*num;

  print("Cube of $num = $Cube");
}