//Write a program to find area of Triangle

import 'dart:io';

void main()
{
  double? height,base,Area;

  print("Enter a height of Triangle : ");
  height = double.parse(stdin.readLineSync()!);

  print("Enter a base of triangle : ");
  base = double.parse(stdin.readLineSync()!);

  Area = (height * base) / 2;

  print("Area of triangle = $Area");

  
}