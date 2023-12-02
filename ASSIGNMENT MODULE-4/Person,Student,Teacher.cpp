#include<iostream>
using namespace std;
class Person
{
	public:
		int Age;
		string Name;
		void setPerson()
		{
			cout<<"Enter a Name : ";
			cin>>Name;
			cout<<"Enter an Age : ";
			cin>>Age;
		}
		void displayPerson()
		{
			cout<<"Name : "<<Name;
			cout<<"\nAge : "<<Age;
		}
};
class Student : public Person
{
	public:
		float percentage;
		void setStudent()
		{
			cout<<"\nEnter a Percentage : ";
			cin>>percentage;
		}
		void displayStudent()
		{
			cout<<"Percentage : "<<percentage;
		}
};
class Teacher : public Person
{
	public:
		int Salary;
		void setTeacher()
		{
			cout<<"\nEnter a Salary : ";
			cin>>Salary;
		}
		void displayTeacher()
		{
			cout<<"Salary : "<<Salary;
		}
};
main()
{
	Person p1;
	p1.setPerson();
	p1.displayPerson();
	
	Student s1;
	s1.setStudent();
	s1.displayStudent();
	
	Teacher t1;
	t1.setTeacher();
	t1.displayTeacher();
}