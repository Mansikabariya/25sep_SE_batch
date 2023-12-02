//swapping of two numbers using a friend fuction
#include<iostream>
using namespace std;
class swapping
{
	public:
		int x;
	protected:
		int y;
		
	friend void swap();
};
void swap()
{
	swapping s;
	s.x = 10;
	s.y = 20;
	
	cout<<"Before swapping value of x is : "<<s.x;
	cout<<"\nBefore swapping value of y is : "<<s.y;
	
	s.x = s.x + s.y;
	s.y = s.x - s.y;
	s.x = s.x - s.y;
	
	cout<<"\nAfter swapping value of x is : "<<s.x;
	cout<<"\nAfter swapping value of y is : "<<s.y;
	
}
main()
{
	swap();
}