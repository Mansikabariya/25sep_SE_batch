/*Display this information using print
  -Your name
  -Your Birth Date
  -Your Age
  -Your Address
*/

import 'dart:io';

void main()
{
  String? name,Address;
  int? Age;
  String? Birthdate;

  print("Enter your name : ");
  name = stdin.readLineSync()!;

  print("Enter Your birthdate : ");
  Birthdate = stdin.readLineSync()!;

  print("Enter your age : ");
  Age = int.parse(stdin.readLineSync()!);

  print("Enter your address : ");
  Address = stdin.readLineSync()!;

  print("Name = $name");
  print("Birthdate = $Birthdate");
  print("Age = $Age");
  print("Address = $Address");

}
