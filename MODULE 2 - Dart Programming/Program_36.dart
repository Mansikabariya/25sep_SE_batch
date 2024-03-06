/*
          1
        2 1
      3 2 1
    4 3 2 1
  5 4 3 2 1
*/

import 'dart:io';

void main()
{
  int row = 5;

  for(int i=1; i <= row; i++)
  {
    for(int j=row; j > i; j--)
    {
      stdout.write("   ");
    }
    for(int k=i; k > 0; k--)
    {
      stdout.write(" $k ");
    }
    print("\n");
  }
}