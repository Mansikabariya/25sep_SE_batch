#include<iostream>
using namespace std;
class Student
{
	private:
		float Rollno,Marks,i,Sum,Average;
		string Name,Class;
	public:
		void input()
		{
			cout<<"Enter a Name : ";
			cin>>Name;
			cout<<"Enter a Roll no : ";
			cin>>Rollno;
			cout<<"Enter a Class : ";
			cin>>Class;
		}
		void display()
		{
			cout<<"Enter a Marks of five Subject : ";
			for(i = 0; i < 5; i++)
			{
				cin>>Marks;
				Sum = Sum + Marks;
			} 
			Average = Sum / 5;
			cout<<"Grade : ";
			if(Average >= 91 && Average <= 100)
			{
				cout<<"A1";
			}
			else if(Average >= 81 && Average <= 91)
			{
				cout<<"A2";
			}
			else if(Average >= 71 && Average <= 81)
			{
				cout<<"B1";
			}
			else if(Average >= 61 && Average <= 71)
			{
				cout<<"B2";
			}
			else if(Average >= 51 && Average <= 61)
			{
				cout<<"C1";
			}
			else if(Average >= 41 && Average <= 51)
			{
				cout<<"C2";
			}
			else if(Average >= 33 && Average <= 41)
			{
				cout<<"D1";
			}
			else if(Average >= 21 && Average <= 33)
			{
				cout<<"D2";
			}
			else if(Average >= 0 && Average <= 21)
			{
				cout<<"E";
			}
			else
			{
				cout<<"Invalid Marks";
			}
		}
};
main()
{
	Student s1;
	s1.input();
	s1.display();
}