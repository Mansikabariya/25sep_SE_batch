//Multiplication using overloading
#include<iostream>
using namespace std;
class Operation
{
	public:
		void multi(int a, int b)
		{
			cout<<a*b<<endl;
		}
		void multi(float a, float b)
		{
			cout<<a*b<<endl;
		}
		void multi(int a, int b, int c)
		{
			cout<<a*b*c<<endl;
		}
};
main()
{
	Operation op;
	op.multi(20,30);
	op.multi(30.40f,40.90f);
	op.multi(20,40,80);
}