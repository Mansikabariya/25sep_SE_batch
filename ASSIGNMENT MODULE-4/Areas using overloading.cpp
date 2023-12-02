//Areas using function overloading
#include<iostream>
using namespace std;
class Rectangle
{
	public:
		float Length, Breadth, Area;
		void input()
		{
			cout<<"Enter a Length of Rectangle : ";
			cin>>Length;
			cout<<"Enter a Breadth of Rectangle : ";
			cin>>Breadth;
		}
		void display()
		{
			Area = Length * Breadth;
			cout<<"Area of Rectangle is : "<<Area;
		}
};
class Circle
{
	public:
		float Radius, Area, pi = 3.14;
		void input()
		{
			cout<<"\nEnter a Radius of Circle : ";
			cin>>Radius;
		}
		void display()
		{
			Area = Radius * Radius * pi;
			cout<<"\nArea of Circle : "<<Area;
		}
};
class Triangle
{
	public:
		float Area, Height, Base;
		void input()
		{
			cout<<"\nEnter a Height of Triangle is : ";
			cin>>Height;
			cout<<"\nEnter a Base of Triangle is : ";
			cin>>Base;
		}
		void display()
		{
			Area = (Base * Height) / 2;
			cout<<"\nArea of Triangle is : "<<Area;
		}
};
main()
{
	Rectangle r1;
	r1.input();
	r1.display();
	
	Circle c1;
	c1.input();
	c1.display();
	
	Triangle t1;
	t1.input();
	t1.display();
}