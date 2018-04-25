#include <iostream>
#include <string>
using namespace std;

int main()
{	
	int inches = 0;
	int top = 0;
	int bottom = 0;
    cout << "Enter a height between 36\" and 78\": " << endl;
    cin >> inches;
    cout << "Your height is " << inches / 12 << " feet and " << inches % 12 << " inches: " << endl;
    cout << "think of a fraction then input the numerator: " << endl;
    cin >> top;
    cout << "Now the denomenator: " << endl;
    cin >> bottom;
    cout << "Your fraction as a decimal is " << (double) (bottom % top) << endl;
    
	return 0;
}
