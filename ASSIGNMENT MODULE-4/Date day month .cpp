#include<iostream>
using namespace std;
class Date
{
	private:
		int Day;
		int Month;
		int Year;
		
	public:
		void setDay()
		{
			cout<<"Enter a Day : ";
			cin>>Day;
		}
		int getDay()
		{
			return Day;
		}
		void setMonth()
		{
			cout<<"Enter a Month : ";
			cin>>Month;
		}
		int getMonth()
		{
			return Month;
		}
		void setYear()
		{
			cout<<"Enter a Year : ";
			cin>>Year;
		}
		int getYear()
		{
			return Year;
		}
};
main()
{
	Date d;
	d.setDay();
	
	d.setMonth();
	
	d.setYear();
}