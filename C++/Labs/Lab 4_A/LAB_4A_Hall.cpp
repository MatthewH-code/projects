#include <iostream>
#include <string>
using namespace std;

int main()
{	
	//Create variables
	double hours = 0;
	double payrate = 16.78;
	double overtime = 0;
	double overtimerate = 25.17;
	double overtimepay = 0;
	double reg = 0;
	double gross = 0;
	double grosswss = 0;
	double grosswfi = 0;
	double grosswst = 0;
	double ss = 0.06;
	double fi = 0.14;
	double st = 0.05;
	double ud = 10.00;	
	double takehome = 0;
	cout.setf(ios::fixed);
	cout.precision(2);

	
	//Collect output Regular Hours and Overtime
	cout << "How many hours did you work?:" << endl;
	cin >> hours;
	cout << "How many overtime hours did you work?:" << endl;
	cin >> overtime;
	
	//Calculate Gross wage
	reg = hours * payrate;
	overtimepay = overtime * overtimerate;
	gross = overtimepay + reg;
	
	//Calculate SS, FedTax, StateTax
	grosswss = gross * ss;
	grosswfi = gross * fi;
	grosswst = gross * st;
	
	//Compute take home wages
	takehome = gross - grosswss - grosswfi - grosswst - ud;
	
	//Create outputs
	cout << endl << endl << "Your Gross Pay is: $" << gross << endl;
	cout << "Social Security withheld: $" << grosswss << endl;
	cout << "Federal Tax withheld: $" << grosswfi << endl;
	cout << "State Tax withheld: $" << grosswst << endl;
	cout << "Union Dues withhel: $" << ud << endl;
	cout << endl << endl << "Your take home pay is: $" << takehome <<endl;
	
	
	return 0;
}
