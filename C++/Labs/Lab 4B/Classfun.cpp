#include <iostream>
#include <string>
using namespace std;

int main()
{	
	double yards = 0;
	double miles = 0;
	double feet = 0;
	double inches = 0;
	cout.setf(ios::fixed);
	cout.precision(3);
	
    cout << "Enter some number of yards " << endl;
    cin >> yards;
    miles =  yards / 1720.00;
    feet = yards * 3;
    inches = yards * 36.00;
    
    cout << "Miles = " << miles;
    cout << ", Yards = " << yards;
    cout<< ", Feet = "<< feet;
    cout << ", and Inches = " << inches << endl;
	return 0;
}
