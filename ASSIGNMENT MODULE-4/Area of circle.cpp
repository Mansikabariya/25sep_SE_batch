//Area of circle using method
#include<iostream>
using namespace std;
class Area
{
	public:
		float radius,Area,pi = 3.14;
		void input()
		{
			cout<<"Enter a radius of circle : ";
			cin>>radius;
		}
		void display()
		{
			Area = radius * radius * pi;
			cout<<"Area of circle is : "<<Area;
		}
};
main()
{
	Area a1;
	a1.input();
	a1.display();
}
