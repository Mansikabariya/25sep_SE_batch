/*
  1
  2 3
  4 5 6 
  7 8 9 10
  11 12 13 14 15
*/

import 'dart:io';

void main()
{
  int? num = 1;

  for(int row = 1; row <= 5; row++)
  {
    for(int col = 1; col <= row; col++)
    {
      stdout.write(" $num ");
      num = num! + 1;
    }
    print("\n");
  }
}