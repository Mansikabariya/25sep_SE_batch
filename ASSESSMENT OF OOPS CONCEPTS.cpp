#include<iostream>
using namespace std;
main()
{
	char Name[30];
	char Pizza1[] = "7-cheese", Pizza2[] = " Peri-peri", Pizza3[] = "Regular";
	char Sandwich1[] = "Club sandwich", Sandwich2[] = "Extream veg sandwich", Sandwich3[] = "Veg crispy sanwich";
	char Biriyani1[] = "Veg biriyani", Biriyani2[] = "Hydrabadi biriyani", Biriyani3[] = "Beef biriyani";
	char Burger1[] = "Peri-peri", Burger2[] = "Cheesy", Burger3[] = "Tanduri";
	char Rolls1[] = "Jini Rolls", Rolls2[] = "Dhosa Rolls", Rolls3[] = "Spring Rolls";
	char gotostart;
	beginning:
	int choice = 0, choice2, choice3, quantity;
	cout<<"\t\t\t-------TOPS FAST FOOD-------\n\n";
	cout<<"Please Enter your Name : \n";
	cin>>Name;
	cout<<"Hello"<<Name;
	cout<<"\nWhat would you like to order ? \n\n";
	cout<<"\t\t\t-------Menu-------\n\n";
	cout<<"1) Pizza\n";
	cout<<"2) Burgers\n";
	cout<<"3) Sandwich\n";
	cout<<"4) Rolls\n";
	cout<<"5) Biriyani\n";
	cout<<"\nPlease Enter your choice : ";
	cin>>choice;
	
	if(choice == 1)
	{
		
		cout<<"\n1) "<<Pizza1<<"\n";
		cout<<"\n2) "<<Pizza2<<"\n";
		cout<<"\n3) "<<Pizza3<<"\n";
		cout<<"Please enter which flavour would you like to have ? :";
		cin>>choice2;
		if(choice2 >= 1 && choice2 <=  5)
		{
			cout<<"1) Small Rs.250\n"<<"2) Regular Rs.500\n"<<"3) Large Rs.900\n";
			cout<<"\nChoose Pizza Size : ";
			cin>>choice3;
			if(choice3 >= 1 && choice3 <= 3)
			cout<<"\nPlease Enter quantity : ";
			cin>>quantity;
			switch(choice3)
			{
				case 1:
					choice = 250 * quantity;
					break;
				case 2:
					choice = 500 * quantity;
					break;
				case 3:
					choice = 900 * quantity;
					break;
			}
			switch(choice3)
			{
				case 1:
					cout<<"\t\t\t-----Your Order------\n";
					cout<<" "<<quantity<<" "<<Pizza1;
					cout<<"\nYour total bill is"<<choice;
					cout<<"\nYour order will be delivered in 40 minutes";
					cout<<"\n\nThank you for ordering from TOPS FAST FOOD\n";
					break;
				case 2:
					cout<<"\t\t\t-----Your Order------\n";
					cout<<" "<<quantity<<" "<<Pizza2;
					cout<<"\nYour total bill is"<<choice;
					cout<<"\nYour order will be delivered in 40 minutes";
					cout<<"\n\nThank you for ordering from TOPS FAST FOOD\n";
					break;
				case 3:
					cout<<"\t\t\t-----Your Order------\n";
					cout<<" "<<quantity<<" "<<Pizza3;
					cout<<"\nYour total bill is"<<choice;
					cout<<"\nYour order will be delivered in 40 minutes";
					cout<<"\n\nThank you for ordering from TOPS FAST FOOD\n";
					break;
			}
			cout<<"Would you like to order anything else ? Y / N : ";
			cin>>gotostart;
			if(gotostart == 'Y' || gotostart == 'y')
			{
				goto beginning;
			}
		}
	}
	else if(choice == 2)
	{
		cout<<"\n1) "<<Burger1<<"Rs.180"<<"\n";
		cout<<"\n2) "<<Burger2<<"Rs.150"<<"\n";
		cout<<"\n3) "<<Burger3<<"Rs.160"<<"\n";
		cout<<"Please Enter which Burger you would like to have ? : \n";
		cin>>choice3;
		if(choice3 >= 1 && choice3 <= 3)
		{
			cout<<"\Please Enter quantity : \n";
			cin>>quantity;
			switch(choice3)
			{
				case 1:
					choice = 180 * quantity;
					break;
				case 2:
					choice = 150 * quantity;
					break;
				case 3: 
					choice = 160 * quantity;
					break;
			}
			switch(choice3)
			{
				case 1:
					cout<<"\t\t\t-----Your Order------\n";
					cout<<" "<<quantity<<" "<<Burger1;
					cout<<"\nYour total bill is"<<choice;
					cout<<"\nYour order will be delivered in 40 minutes";
					cout<<"\n\nThank you for ordering from TOPS FAST FOOD\n";
					break;
				case 2:
					cout<<"\t\t\t-----Your Order------\n";
					cout<<" "<<quantity<<" "<<Burger2;
					cout<<"\nYour total bill is"<<choice;
					cout<<"\nYour order will be delivered in 40 minutes";
					cout<<"\n\nThank you for ordering from TOPS FAST FOOD\n";
					break;
				case 3:
					cout<<"\t\t\t-----Your Order------\n";
					cout<<" "<<quantity<<" "<<Burger3;
					cout<<"\nYour total bill is"<<choice;
					cout<<"\nYour order will be delivered in 40 minutes";
					cout<<"\n\nThank you for ordering from TOPS FAST FOOD\n";
					break;
			}
			cout<<"\nWould you like to order anything else ? Y / N : \n";
			cin>>gotostart;
			if(gotostart == 'Y' || gotostart == 'N')
			{
				goto beginning;
			}
		}
	}
	else if(choice == 3)
	{
		cout<<"\n1) "<<Sandwich1<<"Rs.240"<<"\n";
		cout<<"\n2) "<<Sandwich2<<"Rs.160"<<"\n";
		cout<<"\n3) "<<Sandwich3<<"Rs.100"<<"\n";
		cout<<"Please Enter which Burger you would like to have ? : \n";
		cin>>choice3;
		if(choice3 >= 1 && choice3 <= 3)
		{
			cout<<"\nPlease Enter Quantity: ";
			cin>>quantity;
			switch(choice3)
			{
				case 1: 
					choice = 240 * quantity;
					break;

				case 2:
					choice = 160 * quantity;
					break;

				case 3:
					choice = 100 * quantity;
					break;
			}
			switch(choice3)
			{
				case 1:
				 	cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<" "<<Sandwich1;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
			 		break;
			 	case 2:
			 		cout<<"\t\t--------Your Order---------\n";
				 	cout<<""<<quantity<<"  "<<Sandwich2;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
			 		break;
				 case 3:
			 		cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<" "<<Sandwich3;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
					break;
			}
			cout<<"Would you like to order anything else ? Y / N : ";
			cin>>gotostart;
			if(gotostart == 'Y' || gotostart == 'y')
			{
				goto beginning;
			}
		}
	}
	else if(choice == 4)
	{
		cout<<"\n1 "<<Rolls1<<" Rs.150"<<"\n";
		cout<<"2 "<<Rolls2<<" Rs.100"<<"\n";
		cout<<"3 "<<Rolls3<<" Rs.120"<<"\n";
		cout<<"\nPlease Enter which you would like to have ? : \n";
		cin>>choice3;
		if(choice3 >= 1 && choice <= 3)
		{
			cout<<"Please Enter quantity : \n";
			cin>>quantity;
			switch(choice3)
			{
				case 1: 
					choice = 150 * quantity;
					break;

				case 2: 
					choice = 100 * quantity;
					break;

				case 3: 
					choice = 120 * quantity;
					break;
			}
			switch(choice3)
			{
				case 1:
			 		cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<" "<<Rolls1;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
					break;
			 case 2:
			 		cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<"  "<<Rolls2;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
					break;
			 case 3:
			 		cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<" "<<Rolls3;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
			 		break;
			}
			cout<<"Would you like to order anything else ? Y / N : \n";
			cin>>gotostart;
			if(gotostart == 'Y' || gotostart == 'y')
			{
				goto beginning;
			}
		}
	}
	else if(choice == 5)
	{
		cout<<"\n1 "<<Biriyani1<<" Rs.150"<<"\n";
		cout<<"2 "<<Biriyani2<<" Rs.100"<<"\n";
		cout<<"3 "<<Biriyani3<<" Rs.120"<<"\n";
		cout<<"\nPlease Enter which you would like to have ? : \n";
		cin>>choice3;
		if(choice3 >= 1 && choice <= 3)
		{
			cout<<"Please Enter quantity : \n";
			cin>>quantity;
			switch(choice3)
			{
				case 1: 
					choice = 150 * quantity;
					break;

				case 2: 
					choice = 100 * quantity;
					break;

				case 3: 
					choice = 120 * quantity;
					break;
			}
			switch(choice3)
			{
				case 1:
					 cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<" "<<Biriyani1;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
			 		break;
			 	case 2:
			 		cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<"  "<<Biriyani2;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
			 		break;
				case 3:
			 		cout<<"\t\t--------Your Order---------\n";
			 		cout<<""<<quantity<<" "<<Biriyani3;
			 		cout<<"\nYour Total Bill is"<<choice<<"\nYour Order Will be delivered in 40 Minutes";
			 		cout<<"\nThank you For Ordering From Carl's Jr. Fast Food\n";
			 		break;
			}
			cout<<"Would you like to order anything else ? Y / N : \n";
			cin>>gotostart;
			if(gotostart == 'Y' || gotostart == 'y')
			{
				goto beginning;
			}
		}
	}
	else
	{
		cout<<"Please Select Right choice : \n";
		cout<<"Would you like to start the program again ? Y / N : ";
		cin>>gotostart;
		if(gotostart == 'Y' || gotostart == 'y')
		{
			goto beginning;
		}
	}
	
}