/*
          *
         * *
        * * *
       * * * *
      * * * * *
*/

import 'dart:io';

void main()
{ 
  int row=5;
  for(int i = 1; i <=row; i++)
  {
    for(int j = 1; j <= row - i; j++)
    {
      stdout.write("   ");
    }
    for(int k = 1; k <= 2 * i - 1; k++)
    {
      stdout.write(" * ");
    }
    print("\n");
  }
}