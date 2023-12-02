#include<iostream>
using namespace std;
class People
{
	private:
		int Age;
		string Name,Country;
		public:
			void input()
			{
				cout<<"Enter your Name : ";
				cin>>Name;
				cout<<"Enter your Age : ";
				cin>>Age;
				cout<<"Enter your country : ";
				cin>>Country;
			}
			void display()
			{
				cout<<"\nYour Name is : "<<Name;
				cout<<"\nYour Age is : "<<Age;
				cout<<"\nYour Country is : "<<Country;
			}
};
main()
{
	People p1;
	p1.input();
	p1.display();
}