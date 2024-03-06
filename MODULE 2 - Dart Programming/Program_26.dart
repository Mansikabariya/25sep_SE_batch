/*
  1
  4 4 
  9 9 9
  16 16 16 16
  25 25 25 25 25
*/

import 'dart:io';

void main()
{
  for(int row = 1; row<=5; row++)
  {
    for(int col=1; col<=row; col++)
    {
      stdout.write(" ${row*row} ");
    }
    print("\n");
  }
}