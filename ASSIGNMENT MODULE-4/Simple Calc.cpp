#include<iostream>
using namespace std;
class Addition
{
	public:
		Addition(int a, int b)
		{
			cout<<"Enter value of a : ";
			cin>>a;
			cout<<"Enter value of b : ";
			cin>>b;
			cout<<"Addition of two numbers is : "<<a+b;
		}
};
class Subtraction
{
	public:
		Subtraction(int a, int b)
		{
			cout<<"\nEnter value of a : ";
			cin>>a;
			cout<<"Enter value of b : ";
			cin>>b;
			cout<<"Subtraction of two numbers is : "<<a-b;
		}
};
class Multiplication
{
	public:
		Multiplication(int a, int b)
		{
			cout<<"\nEnter a first number : ";
			cin>>a;
			cout<<"Enter a second number : ";
			cin>>b;
			cout<<"Multiplication of two numbers is : "<<a*b;
		}
};
class Division
{
	public:
		Division(int a, int b)
		{
			cout<<"\nEnter a first number : ";
			cin>>a;
			cout<<"Enter a second number : ";
			cin>>b;
			cout<<"Division of two numbers is : "<<a/b;
		}
};
main()
{
	Addition a1(10,20);
	Subtraction s1(10,20);
	Multiplication m1(10,20);
	Division d1(10,20);
}