//Write a program to calculate sum of 5 subjects and find the percentage.Subject marks entered by user.

import 'dart:io';

void main()
{
  int? M1,M2,M3,M4,M5,Sum;
  double? Percentage;

  print("Enter a marks 1 : ");
  M1 = int.parse(stdin.readLineSync()!);

  print("Enter a marks 2 : ");
  M2 = int.parse(stdin.readLineSync()!);

  print("Enter a marks 3 : ");
  M3 = int.parse(stdin.readLineSync()!);

  print("Enter a marks 4 : ");
  M4 = int.parse(stdin.readLineSync()!);

  print("Enter a marks 5 : ");
  M5 = int.parse(stdin.readLineSync()!);

  Sum = M1+M2+M3+M4+M5;

  print("Sum of 5 subject marks = $Sum");

  Percentage = (Sum / 500) * 100;

  print("Percentage = $Percentage");


}