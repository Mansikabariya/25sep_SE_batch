#include<iostream>
using namespace std;
class String
{
	public:
		char string[50];
		void input()
		{
			cout<<"Enter your string : ";
			cin>>string;
		}
		void display()
		{
			cout<<"Your String is : "<<string;
		}
		String operator+(String s)
		{
			String obj;
			strcat(string,s.string);
			strcpy(obj.string,string);
		}
};
main()
{
	String string1,string2,string3;
	string1.input();
	string2.input();
	string3=string1+string2;
	string3.display();
}