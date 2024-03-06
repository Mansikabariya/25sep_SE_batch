/*
    1
   1 2
  1 2 3
 1 2 3 4
1 2 3 4 5
*/

import 'dart:io';

void main()
{
  int row=5;
  for(int i = 1; i <= row; i++)
  {
    for(int j = 1; j <= row - i; j++)
    {
      stdout.write("  ");
    }
    for(int k = 1; k <= i; k++)
    {
      stdout.write(" $k ");
    }
    print("\n");
  }
}