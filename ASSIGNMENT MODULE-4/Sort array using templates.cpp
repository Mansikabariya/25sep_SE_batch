#include<iostream>
using namespace std;
#define n 10
template <class T>
void sort(T arr[10], int SIZE)
{
	for(int i = 0; i < SIZE; i++)
	{
		for(int j = i + 1; j < SIZE; j++)
		{
			if (arr[i] > arr[j])
			{
				T temp;
				temp = arr[i];
				arr[i] = arr[j];
				arr[j] = temp;
			}
		}	
	}	
}
main()
{
	int int_array[n];
	float float_array[n];
	cout<<"Enter integer array elements : ";
	for(int i = 0; i < n; i++)
	{
		cin>>int_array[i];
	}
	cout<<"\nEnter floating array elements : ";
	for(int i = 0; i < n; i++)
	{
		cin>>float_array[i];	
	}
	sort(int_array,n);
	sort(float_array,n);
	cout<<"After sorting the elements : "<<endl;
	for(int i = 0; i < n; i++)
	{
		cout<<int_array[i]<<",";
	}
	cout<<endl;
	for(int i = 0; i < n; i++)
	{
		cout<<float_array[i]<<",";
	}
}