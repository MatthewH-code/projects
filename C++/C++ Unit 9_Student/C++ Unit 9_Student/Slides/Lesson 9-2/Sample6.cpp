// Using a Structure Example
#include <iostream>
using namespace std;

struct Point
{
	double xCord;
	double yCord;
};

void pointStruct(Point &thePoint);

int main()
{
	Point p1;
	Point p2;
	
	pointStruct(p1);
	pointStruct(p2);
	
	cout << "Your first point is (" << p1.xCord << ", " << p1.yCord << ")" << endl; 
	cout << "Your second point is (" << p2.xCord << ", " << p2.yCord << ")" << endl;
	return 0;
}

void pointStruct(Point &thePoint)
{
	cout << "Enter your x coordinate: ";
	cin  >> thePoint.xCord;
	cout << "Enter your y coordinate: ";
	cin  >> thePoint.yCord;
}

