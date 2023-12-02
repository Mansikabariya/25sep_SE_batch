//Division using method overloading
#include<iostream>
using namespace std;
class Operation
{
	public:
		void div(int a, int b)
		{
			cout<<a/b<<endl;
		}
		void div(float a, float b)
		{
			cout<<a/b<<endl;
		}
};
main()
{
	Operation op;
	op.div(30,15);
	op.div(34.2f,2.2f);
}