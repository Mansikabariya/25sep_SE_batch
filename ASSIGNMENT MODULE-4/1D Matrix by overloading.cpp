#include<iostream>
using namespace std;
class Matrix
{
	public:
		int a[3][3];
		void input()
		{
			cout<<"Enter Matrix element (3 x 3) : \n";
			for(int i = 0; i < 3; i++)
			{
				for(int j = 0; j < 3; j++)
				{
					cout<<" ";
					cin>>a[i][j];
				}
			}
		}
		void display()
		{
			for(int i = 0; i < 3; i++)
			{
				cout<<" ";
				for(int j = 0; j < 3; j++)
				{
					cout<<a[i][j]<<"\t";
				}
				cout<<"\n";
			}
		}
		void operator +(Matrix x)
		{
			int mat[3][3];
			for(int i = 0; i < 3; i++)
			{
				for(int j = 0; j < 3; j++)
				{
					mat[i][j] = a[i][j] + x.a[i][j];
				}
			}
			cout<<"\nAddition of Matrix : \n\n";
			for(int i = 0; i < 3; i++)
			{
				cout<<" ";
				for(int j = 0; j < 3; j++)
				{
					cout<<mat[i][j]<<"\t";
				}
				cout<<"\n";
			}
		}
};
main()
{
	Matrix m,n;
	m.input();
	n.input();
	cout<<"\nFirst Matrix : \n\n";
	m.display();
	cout<<"\nSecond Matrix : \n\n";
	n.display();
	m+n;
}