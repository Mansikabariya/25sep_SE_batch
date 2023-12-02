#include<iostream>
using namespace std;
class Student
{
	public:
		int Rollno;
		string Name,Class;
		Student()
		{
			cout<<"\t\tRISING STARS";
		}
		void input()
		{
			cout<<"\nEnter a Student Rollno : ";
			cin>>Rollno;
			cout<<"\nEnter a Student Name : ";
			cin>>Name;
		}
		void display()
		{
			cout<<"\nStudent Roll no : "<<Rollno;
			cout<<"\nStudent Name : "<<Name;
		}
};
class Marks : public Student
{
	public:
		int sub1,sub2,sub3;
		float Percentage;
		void inputMarks()
		{
			cout<<"Enter the Marks of sub 1 : ";
			cin>>sub1;
			cout<<"Enter the Marks of sub 2 : ";
			cin>>sub2;
			cout<<"Enter the Marks of sub 3 : ";
			cin>>sub3;
		}
		void displayMarks()
		{
			cout<<"Marks of sub 1 is : "<<sub1;
			cout<<"Marks of sub 2 is : "<<sub2;
			cout<<"Marks of sub 3 is : "<<sub3;
		}
		void Calculate()
		{
			
			Percentage = (sub1 + sub2 + sub3) / 3;
			cout<<"\nTotal Percentage is : "<<Percentage;
		}
};
main()
{
	Marks m1;
	int choice;
	{
		cout<<"\n1.Input data";
		cout<<"\n2.Output data";
		cout<<"\n3.Calculate percentage";
		cout<<"\n4.Exit";
		cin>>choice;
		switch(choice)
		{
			case 1: 
				m1.inputMarks();
				break;
				
			case 2:
				m1.displayMarks();
				break;
				
			case 3:
				m1.Calculate();
				break;
				
			default:
				cout<<"Exit";
		}
	}
}