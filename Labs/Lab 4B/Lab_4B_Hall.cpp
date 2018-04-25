#include <iostream>
#include <string>
using namespace std;

int main()
{	
	int inches = 0;
	double top = 0;
	double bottom = 0;
	int random = 0;
    cout << "Enter a height between 36\" and 78\": " << endl;
    cin >> inches;
    cout << "Your height is " << inches / 12 << " feet and " << inches % 12 << " inches: " << endl << endl << endl;
    cout << "think of a fraction then input the numerator: " << endl;
    cin >> top;
    cout << "Now the denomenator: " << endl;
    cin >> bottom;
    cout << "Your fraction as a decimal is " << bottom / top << endl << endl << endl;
    cout << "Enter a random whole number" << endl;
    cin >> random;
    cout << "Here is your whole number and the next three:" << endl;
    cout << random++;
    cout << ", " << random++;
    cout << ", " << random++;
    cout << ", " << random++;
	return 0;
}
