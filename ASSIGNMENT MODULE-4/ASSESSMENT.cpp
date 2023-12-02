#include<iostream>
using namespace std;
class Restaurent
{
	public:
		int choice;
		string Name;
		void input()
		{
			cout<<"\t\t WELCOME TO TOPS FAST FOOD";
			cout<<"\nEnter your Name : ";
			cin>>Name;
		}
		void display()
		{
			cout<<"\nHello Mansi";
			cout<<"\nWhat would you like to order ?";
			cout<<"\n\t\t Menu";
			cout<<"\n1) Pizzas";
			cout<<"\n2) Burgers";
			cout<<"\n3) Sandwich";
			cout<<"\n4) Rolls";
			cout<<"\n5) Biriyani";
			
			if(choice == 1)
			{
				cout<<"\nPizzas";
				cout<<"\nWhich type of pizza you choose ?";
				cout<<"\n1) 7 Cheese \n2) Veggie";
				
				
			}
		}
};
main()
{
	Restaurent r1;
	r1.input();
	r1.display();
}