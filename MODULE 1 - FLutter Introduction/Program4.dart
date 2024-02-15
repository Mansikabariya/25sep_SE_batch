//Write a program to find Area of Circle

import 'dart:io';

void main()
{
  double? Radius,PI=3.14,Area;

  print("Enter a radius of circle : ");
  Radius = double.parse(stdin.readLineSync()!);

  Area = PI*Radius*Radius;     //Formula for area of circle

  print("Area of circle = $Area");
}