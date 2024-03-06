/*
  1
  2 2
  3 3 3
  4 4 4 4
  5 5 5 5 5
*/

import 'dart:io';

void main()
{
  for(int row=1; row <= 5; row++)
  {
    for(int col = 1; col<=row; col++)
    {
      stdout.write(" $row ");
    }
    print("\n");
  }
}