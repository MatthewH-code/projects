// Using a Structure Example
#include <iostream>
using namespace std;

struct Point
{
	double xCord;
	double yCord;
};

void getPoints(Point &thePoint); 

int main()
{
	Point p1;
	Point p2;
	
	getPoints(p1);
	getPoints(p2);
	
	cout << "Your first Point is (" << p1.xCord  << ", " << p1.yCord << ")" << endl;
	cout << "Your second Point is (" << p2.xCord  << ", " << p2.yCord << ")" << endl;
	 
	return 0;
}

void getPoints(Point &thePoint)
{
	cout << "Enter your x coordinate: ";
	cin  >> thePoint.xCord;
	cout << "Enter your y coordinate: ";
	cin  >> thePoint.yCord;
}

