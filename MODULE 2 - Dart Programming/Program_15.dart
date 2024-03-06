/*Write a program user entered the 5 subjects marks.You have to make total and find the percentage.
Percentage > 75 you have to print "Distinction", Percentage > 60 and % < 70 you have to print "First Class",
Percentage > 50 and % <=60 ypu have to print "Second Class", % >35 and %,=50 you have to print "Pass Class",
otherwise print "Fail".
*/

import 'dart:io';

void main()
{
  int? m1,m2,m3,m4,m5,Total;
  double? Percentage;

  print("Enter a mark 1 : ");
  m1 = int.parse(stdin.readLineSync()!);

  print("Enter a mark 2 : ");
  m2 = int.parse(stdin.readLineSync()!);

  print("Enter a mark 3 : ");
  m3 = int.parse(stdin.readLineSync()!);

  print("Enter a mark 4 : ");
  m4 = int.parse(stdin.readLineSync()!);

  print("Enter a mark 5 : ");
  m5 = int.parse(stdin.readLineSync()!);

  Total = m1+m2+m3+m4+m5;

  print("Total marks = $Total");

  Percentage = (Total / 500) * 100;

  print("Percentage = $Percentage");

  if(Percentage > 75)
  {
    print("Distinction");
  }
  else if(Percentage > 60 && Percentage <=75)
  {
    print("First Class");
  }
  else if(Percentage >50 && Percentage <= 60)
  {
    print("Second Class");
  }
  else if(Percentage > 35 && Percentage <= 50)
  {
    print("Pass Class");
  }
  else 
  {
    print("Fail");
  }
}