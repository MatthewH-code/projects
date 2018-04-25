#include <iostream>
#include <string>
using namespace std;

int main()
{	
	int inches = 0;
	int top = 0;
	int bottom = 0;
	char lower = 0;
	char upper = 0;
	cout.setf(ios::fixed);
	cout.precision(2);
	
    cout << "Enter a height between 36\" and 78\": " << endl;
    cin >> inches;
    cout << "Your height is " << inches / 12 << " feet and " << inches % 12 << " inches: " << endl;
    cout << "think of a fraction then input the numerator: " << endl;
    cin >> top;
    cout << "Now the denomenator: " << endl;
    cin >> bottom;
    cout << "Your fraction as a decimal is " << ((double)top / bottom) << endl;
    cout << "Enter a lowercase letter: " << endl;
    cin >> lower;
    upper = lower - 32;
    cout << "This is the uppercase version of that letter: " << (upper) << endl;
    
    
	return 0;
}
