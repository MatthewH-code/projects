// Call by value Example
#include <iostream>
using namespace std;

struct Point
{
	double xCord;
	double yCord;
};

int main()
{
	Point p1;
	cout << "Enter your x coordinate: ";
	cin  >> p1.xCord;
	cout << "Enter your y coordinate: ";
	cin  >> p1.yCord;
	
	cout << "Your Point is (" << p1.xCord  << ", " << p1.yCord << ")" << endl; 
	return 0;
}
