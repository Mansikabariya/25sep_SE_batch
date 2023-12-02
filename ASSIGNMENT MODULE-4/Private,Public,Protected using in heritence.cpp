#include<iostream>
using namespace std;
class A
{
	private:
		int a;
	protected:
		int x;
	public:
		void setValue(int v)
		{
			x = v;
		}
};
class B : private A
{
	public:
		void printValue(void)
		{
			setValue(100);
			cout<<"Value of x is : "<<x;
		}
};
main()
{
	B obj;
	obj.printValue();
}