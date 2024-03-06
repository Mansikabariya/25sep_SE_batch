/*
          A
        B C
      D E F
    G H I J
  K L M N O
*/

import 'dart:io';

void main()
{
  int num=65;

  for(int i=1; i<=5; i++)
  {
    for(int j=1; j<=i; j++)
    {
      stdout.write(String.fromCharCode(num));
      num = num + 1;
    }
    for(int k=i; k>i; k++)
    {
      //stdout.write(String.fromCharCode(num));
      stdout.write("    ");
    }
    num = 65;
    print("\n");
  }
}