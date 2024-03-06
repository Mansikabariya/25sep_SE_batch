 /*Write a program to check a given number is prime or not.

 Prime number = A number that can be divided by only itself and 1 is called prime number.
 */


import 'dart:io';

void main() {
  int? num;
  int i = 2;
  int prime = 0;

  stdout.write("Enter a number : ");
  num = int.parse(stdin.readLineSync()!);

  while (i < num) {
    if (num % i == 0) {
      prime++;
    }
    i++;
  }
  if (prime == 0) {
    print("Prime number");
  } else {
    print("Not a prime number");
  }
}
