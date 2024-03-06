//Create a program using a map

import 'dart:io';

void main()
{
  Map<String,dynamic> Students = {};

  String? Name,value;

  print("Enter a name : ");
  Name = stdin.readLineSync()!;

  print("Enter a subject : ");
  value = stdin.readLineSync()!;

  Students[Name] = value;

  print(Students);
}