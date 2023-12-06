#include<stdio.h>
int main()
{
	int choice;
	printf("\t\t\t\tWELCOME TO THE FOOD PLAZA\n");
	printf("Plese select the meal that you would like to purchase \n");
	printf("1) Pizza\n");
	printf("2) Burger\n");
	printf("3) Idli\n");
	printf("4) Dhosa\n");
	printf("Enter your selected meal : ");
	scanf("%d",&choice);
	
	if(choice == 1)
	{
		printf("You have to choose Pizza\n");
		printf("\tMenu for Pizza\n");
		printf("1) 7-cheesy \t230rs/pcs\n");
		printf("2) Margherita \t249/pcs\n");
		printf("3) Veggie pizza\t199/pcs\n");
		
		int choice2;
		printf("Pizza\n");
		printf("Enter your choice for Pizza : \n");
		scanf("%d",&choice2);
		if(choice2 == 1)
		{
			printf("7-Cheesey Pizza\n");
			int quantity;
			int price = 230;
			int total = 0;
			printf("Enter Quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d \n",total);
			printf("Please Choose your payment method\n");
			printf("1 COD\n");
			printf("2 CC\n");
			printf("3 DC\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("You get your order within 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("You get your order within 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("You get your order within 20 minutes\n");
			}
			else
			{
				printf("Enter Valid choice");
			}
		}
		else if(choice2 == 2)
		{
			printf("Margherita\n");
			int quantity;
			int price = 249;
			int total = 0;
			printf("Enter Quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d \n",total);
			printf("Please Choose your payment method\n");
			printf("1 COD\n");
			printf("2 CC\n");
			printf("3 DC\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("You get your order within 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("You get your order within 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("You get your order within 20 minutes\n");
			}
			else
			{
				printf("Enter Valid choice");
			}
		}
		else if(choice2 == 3)
		{
			printf("Veggie\n");
			int quantity;
			int price = 199;
			int total = 0;
			printf("Enter Quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d \n",total);
			printf("Please Choose your payment method\n");
			printf("1 COD\n");
			printf("2 CC\n");
			printf("3 DC\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("You get your order within 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("You get your order within 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("You get your order within 20 minutes\n");
			}
			else
			{
				printf("Enter Valid choice");
			}
		}
		else
		{
			printf("Invalid choice");
		}
		
	}
	else if(choice == 2)
	{
		printf("You have to choose Burger\n");
		printf("\tMenu for Burger\n");
		printf("1) Peri-peri \t70/pcs\n");
		printf("2) Cheese Burger \t90/pcs\n");
		printf("3) Tanduri Burger \t110/pcs");
		
		int choice2;
		printf("Burger\n");
		printf("Enter your choice for Burger : \n");
		scanf("%d",&choice2);
		
		if(choice2 == 1)
		{
			printf("Peri-peri\n");
			int quantity;
			int price = 70;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please select your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI \n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successfukl\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order will delivered in 20 minutes\n");
			}
			else
			{
				printf("Invalid choice");
			}
		
		}
		else if(choice2 == 2)
		{
			printf("Cheese Burger\n");
			int quantity;
			int price = 90;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Paymnet successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Paymnet successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else
			{
				printf("Invalid choice");
			}
		}
		else if(choice2 == 3)
		{
			printf("Burger\n");
			int quantity;
			int price = 110;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else
			{
				printf("Invalid choice\n");
			}
		}
	}
	else if(choice == 3)
	{
		printf("You have to choose Idli\n");
		printf("\tMenu for Idli\n");
		printf("1) Simple Idli \t80/plate\n");
		printf("2) Rava Idli \t100/plate\n");
		printf("3) Masala Idli \t120/plate\n");
		
		int choice2;
		printf("Idli\n");
		printf("Enter your choice for Idli\n");
		scanf("%d",&choice2);
		
		if(choice2 == 1)
		{
			printf("Simple Idli\n");
			int quantity;
			int price = 80;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else
			{
				printf("Invalid choice");
			}
		}
		else if(choice2 == 2)
		{
			printf("Rava Idli\n");
			int quantity;
			int price = 100;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your oreder will be delivered in 20 minutes\n");
			}
			else
			{
				printf("Invalid choice");
			}
		}
		else if(choice2 == 3)
		{
			printf("Masala Idli\n");
			int quantity;
			int price = 120;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else 
			{
				printf("Invalid choice");
			}
		}
	}
	else if(choice == 4)
	{
		printf("You have to choose Dhosa\n");
		printf("\tMenu for Dhosa\n");
		printf("1) Masala Dhosa \t120/pcs\n");
		printf("2) Cheese Dhosa \t130/pcs\n");
		printf("3) Dhosa Rolls \t170/plate\n");
		
		int choice2;
		printf("Dhosa\n");
		printf("Enter your choice for Dhosa : \n");
		scanf("%d",&choice2);
		
		if(choice2 == 1)
		{
			printf("Masala Dhosa\n");
			int quantity;
			int price = 120;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else 
			{
				printf("Invalid choice");
			}
		}
		else if(choice2 == 2)
		{
			printf("Cheese Dhosa\n");
			int quantity;
			int price = 130;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else
			{
				printf("Invalid choice");
			}
		}
		else if(choice2 == 3)
		{
			printf("Dhosa Rolls\n");
			int quantity;
			int price = 170;
			int total = 0;
			printf("Enter quantity : \n");
			scanf("%d",&quantity);
			
			total = price * quantity;
			
			printf("Your total is : %d\n",total);
			printf("Please choose your payment method\n");
			printf("1) Cash\n");
			printf("2) Credit Card\n");
			printf("3) UPI\n");
			int payment;
			scanf("%d",&payment);
			
			if(payment == 1)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 2)
			{
				printf("Payment successful\n");
				printf("Your order will be delivered in 20 minutes\n");
			}
			else if(payment == 3)
			{
				printf("Payment successful\n");
				printf("Your order wil be delivered in 20 minutes\n");
			}
			else 
			{
				printf("Invalid choice");
			}
		}
	}
	else
	{
		printf("Invalid choice");
	}
}
	