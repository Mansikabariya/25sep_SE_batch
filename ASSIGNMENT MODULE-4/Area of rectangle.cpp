#include<iostream>
using namespace std;
class Rectangle
{
	private:
		float Length,Width,Area;
		public:
			void input()
			{
				cout<<"Enter a Length of Rectangle : ";
				cin>>Length;
				cout<<"Enter a Width of Rectangle : ";
				cin>>Width;
			}
			void display()
			{
				Area = Length * Width;
				cout<<"Area of Rectangle is : "<<Area;	
			}
};
main()
{
	Rectangle r1;
	r1.input();
	r1.display();
}