#include<iostream>
using namespace std;
class Triangle
{
	private:
		int side1,side2,side3;
		public:
			void input()
			{
				cout<<"Enter side 1 : ";
				cin>>side1;
				cout<<"Enter side 2 : ";
				cin>>side2;
				cout<<"Enter side 3 : ";
				cin>>side3;
			}
			void display()
			{
				if(side1 == side2 && side2 == side3)
				{
					cout<<"Triangle is Equilateral";
				}
				else if(side1 == side2 || side2 == side3 || side3 == side1)
				{
					cout<<"Triangle is Isosceles";
				}
				else
				{
					cout<<"Triangle is Scalene";
				}
			}
};
main()
{
	Triangle t1;
	t1.input();
	t1.display();
}