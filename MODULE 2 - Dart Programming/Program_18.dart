//Write a program to find out the Area of Triangle, Rectangle and Circle using IF condition.

import 'dart:io';

void main()
{
  double? Height, Base, Radius, PI = 3.14, Length, Width, Area;
  String? Choice;

  print("Enter a choice : ");
  Choice = stdin.readLineSync()!;

  if(Choice == '1')
  {
    print("Find an Area of Circle");
    print("Enter Radius of circle : ");
    Radius = double.parse(stdin.readLineSync()!);

    Area = PI*Radius*Radius;

    print("Area of circle = $Area");
  }
  else if(Choice == '2')
  {
    print("Find an Area of Triangle");
    print("Enter Height of triangle : ");
    Height = double.parse(stdin.readLineSync()!);

    print("Enter a Base of triangle : ");
    Base = double.parse(stdin.readLineSync()!);

    Area = (Height * Base) / 2;

    print("Area of Triangle = $Area");

  }
  else if(Choice == '3')
  {
    print("Find an area of Rectangle");
    print("Enter a length : ");
    Length = double.parse(stdin.readLineSync()!);

    print("Enter a width : ");
    Width = double.parse(stdin.readLineSync()!);

    Area = Length * Width;

    print("Area of Rectangle : $Area");
  }
  else 
  {
    print("Invalid Choice");
  }
}