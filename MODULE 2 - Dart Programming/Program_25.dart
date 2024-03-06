/*
  1
  0 1
  1 0 1
  1 0 1 0
  1 0 1 0 1
*/

import 'dart:io';

void main()
{
   for(int row=1; row<=5; row++)
  {
    for(int col=1; col<=row; col++)
    {
      if(col%2==0)
      {
        stdout.write(" 0 ");
      }
      else 
      {
        stdout.write(" 1 ");
      }
    }
    print("\n");
  }
}