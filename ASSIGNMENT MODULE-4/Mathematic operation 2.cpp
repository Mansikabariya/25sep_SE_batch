//Mathematical opetartion subtraction using overloading
#include<iostream>
using namespace std;
class Operation
{
	public:
		void Sub(int a, int b)
		{
			cout<<a-b<<endl;
		}
		void sub(float a, float b)
		{
			cout<<a-b<<endl;
		}
		void sub(int a, int b, int c)
		{
			cout<<a-b-c<<endl;
		}
};
main()
{
	Operation op;
	op.Sub(20,10);
	op.sub(20.40f,2.50f);
	op.sub(50,30,20);
}