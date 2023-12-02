#include<iostream>
using namespace std;
class Cricketer
{
	public:
		string Name;
		int Runs,Match,Notout;
		void input()
		{
			cout<<"Enter a Name : ";
			cin>>Name;
			cout<<"Enter a Runs : ";
			cin>>Runs;
			cout<<"Enter a Match : ";
			cin>>Match;
			cout<<"How many times Notout : ";
			cin>>Notout;
		}
};
class Batsman : public Cricketer
{
	public:
		float average;
		void Average()
		{
			average = Runs / Notout;
			cout<<"\nAverage : "<<average;
		}
};
main()
{
	Batsman b1;
	b1.input();
	b1.Average();
}