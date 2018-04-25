// Call by value Example
#include <iostream>
using namespace std;

void salesTax(double sTax, double &cost);

int main()
{
	double tax;
	double origPrice;
	
	cout << "Enter the sales tax:  ";
	cin >> tax;
	cout << "Enter the item price: ";
	cin >> origPrice;
	cout << endl;
	
	// You will need to define and write the  
	// function before uncommenting line 19. 
	salesTax(tax, origPrice);
	
	cout.setf(ios::fixed);
    cout.setf(ios::showpoint);
    cout.precision(2);
	cout << "Your final cost is: $" << origPrice << endl;
	 
	return 0;
}

void salesTax(double sTax, double &cost)
{
	double tax = cost * sTax;
	cost = cost + tax;
}
