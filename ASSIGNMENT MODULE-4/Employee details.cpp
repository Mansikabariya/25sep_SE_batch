#include<iostream>
using namespace std;
class Employee
{
	private:
		int ID,Salary,Annual;
		string Name;
	public:
		Employee()
		{
			cout<<"Enter an Employee ID : ";
			cin>>ID;
			cout<<"Enter an Employee Name : ";
			cin>>Name;
			cout<<"Enter an Employee Salary : ";
			cin>>Salary;
			
			Annual = Salary * 12;
			cout<<"\nEmployee ID : "<<ID;
			cout<<"\nEmployee Name : "<<Name;
			cout<<"\nAnnual Salary : "<<Annual;
		}
};
main()
{
	Employee e1;
}