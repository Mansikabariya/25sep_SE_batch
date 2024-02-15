//Write a program to find the simple interest.

  import 'dart:io';

  void main()
  {
    int? PrincipleAmount, Rate, Time;
    double? SimpleInterest;

    print("Enter a Principle amount :");
    PrincipleAmount = int.parse(stdin.readLineSync()!);

    print("Enter a Rate : ");
    Rate = int.parse(stdin.readLineSync()!);

    print("Enter a Time Duration : ");
    Time = int.parse(stdin.readLineSync()!);

    SimpleInterest = (PrincipleAmount * Rate * Time) / 100;

    print("Simple Interest = $SimpleInterest");
  }