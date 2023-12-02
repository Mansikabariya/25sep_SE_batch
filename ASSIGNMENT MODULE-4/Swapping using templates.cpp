//Templates
#include<iostream>
using namespace std;
template <class T>
void swapping(T &a, T &b)
{
	T t = a;
	  a = b;
	  b = t;
}
main()
{
	char a = 'A', b = 'B';
	int x = 10, y = 20;
	cout<<"Before swap A = "<<a<<"| B = "<<b;
	swapping(a,b);
	cout<<"\nAfter swap A = "<<a<<"| B = "<<b;
	
	cout<<"\nBefore swap X = "<<x<<"| Y = "<<y;
	swapping(x,y);
	cout<<"\nAfter swap X = "<<x<<"| Y = "<<y;
}