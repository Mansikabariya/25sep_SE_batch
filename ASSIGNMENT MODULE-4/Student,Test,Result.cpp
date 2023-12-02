#include<iostream>
using namespace std;
class Student
{
	public:
		int Rollno;
		void rollno()
		{
			cout<<"Enter a Student Roll no : ";
			cin>>Rollno;
		}
		
};
class Test : public Student
{
	public:
		int m1,m2;
		void marks()
		{
			cout<<"\nEnter Mark1 : ";
			cin>>m1;
			cout<<"\nEnter Mark2 : ";
			cin>>m2;
		}
	
};
class Result : public Test
{
	public:
	int Total;
	void total()
	{
		Total = m1 + m2;
		cout<<"Total Marks : "<<Total;
 	}
};
main()
{
	Result r1;
	r1.rollno();
	r1.marks();
	r1.total();
}