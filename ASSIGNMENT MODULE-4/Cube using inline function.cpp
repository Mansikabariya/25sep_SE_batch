#include<iostream>
using namespace std;
class Line
{
	public:
		inline float mul(float x, float y)
		{
			return(x*y);
		}
		inline float cube(float x)
		{
			return(x*x*x);
		}
};
main()
{
	Line obj;
	float num1,num2;
	cout<<"Enter a num1 : ";
	cin>>num1;
	cout<<"Enter a num 2 : ";
	cin>>num2;
	cout<<"\nMultiplication value is : "<<obj.mul(num1,num2);
	cout<<"\nCube of number 1 is : "<<obj.cube(num1);
	cout<<"\nCube of number 2 is : "<<obj.cube(num2);
}