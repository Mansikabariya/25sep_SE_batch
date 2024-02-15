//Write a program to convert temperature from degree centigrade to fahrenhit.

import 'dart:io';
// FORMULA = {F = (9/5 * C) + 32} 
void main()
{
  double? Fahrenhit,Celcius;

  print("Temperature in Celcius : ");
  Celcius = double.parse(stdin.readLineSync()!);

  Fahrenhit = (9 / 5 * Celcius) + 32;

  print("Temperature in fahrenhit = $Fahrenhit");
}