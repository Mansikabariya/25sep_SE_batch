#include<iostream>
using namespace std;
class Rectangle
{
	public:
		float Length,Breadth;
		void input()
		{
			cout<<"Enter a Length of Rectangle : ";
			cin>>Length;
			cout<<"Enter a Breadth of Rectangle : ";
			cin>>Breadth;
		}
		void display()
		{
			cout<<"Length of Rectangle is : "<<Length;
			cout<<"Breadth of Rectangle is : "<<Breadth;
		}
};
class Rectangle1 : public Rectangle
{
	public:
		float Area;
		void input()
		{
			Area = Length * Breadth;
			cout<<"Area of Rectangle is : "<<Area;
		}
		void display()
		{
			cout<<"\nLength of Rectangle is : "<<Length;
			cout<<"\nBreadth of Rectangle is : "<<Breadth;
			cout<<"\nArea of Rctangle is : "<<Area;
		}
};
main()
{
	Rectangle1 r1;
	r1.input();
	r1.display();
}