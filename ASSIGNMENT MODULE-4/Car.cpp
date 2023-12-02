#include<iostream>
using namespace std;
class Car
{
	private:
		int Model;
		string Company,Year;
		public:
			void input()
			{
				cout<<"Enter your Car model : ";
				cin>>Model;
				cout<<"Enter Company name of Car : ";
				cin>>Company;
				cout<<"Enter year of Car Company when Established : ";
				cin>>Year;
			}
			void display()
			{
				cout<<"\nCar Model is : "<<Model;
				cout<<"\nCompany of Car is : "<<Company;
				cout<<"\nYear : "<<Year;
			}
};
main()
{
	Car c1;
	c1.input();
	c1.display();
}