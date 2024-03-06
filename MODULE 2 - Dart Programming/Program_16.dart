//Write program use switch statement. Display monday to sunday.

import 'dart:io';

void main()
{
  String? Days;

  print("Enter a Days : ");
  Days = stdin.readLineSync()!;

  switch(Days)
  {
    case '1':
      print("Monday");
      break;

    case '2':
      print("Tuesday");
      break;

    case '3':
      print("Wednsday");
      break;

    case '4':
      print("Thursday");
      break;

    case '5':
      print("Firday");
      break;

    case '6':
      print("Saturday");
      break;

    case '7':
      print("Sunday");
      break;

    default:
      print("Invalid Input");
  }
}