#include<iostream>
using namespace std;
class Operation
{
	public:
		void addition(int a, int b)
		{
			cout<<a+b<<endl;
		}
		void addition (float a, float b, float c)
		{
			cout<<a+b+c<<endl;
		}
		void addition(int a, int b, int c)
		{
			cout<<a+b+c<<endl;
		}
};
main()
{
	Operation op;
	op.addition(10,20);
	op.addition(23.20f,30.34f,45.10f);
	op.addition(12,90,44);
}