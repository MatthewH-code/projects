#include <iostream>
using namespace std;
#include "Point.h"

void getPoints(Point &thePoint);
void printPoint(Point thePoint);
double findSlope(Point p1, Point p2);

int main()
{
	Point pOne;
	Point pTwo;
	
	cout << "Enter the coordinates of pOne: " << endl;
	getPoints(pOne);
	cout << "Enter the coordinates of pTwo: " << endl;
	getPoints(pTwo);
	
	cout << "The Coordinates of pOne are: ";
	printPoint(pOne);
	cout << endl;
	cout << "The Coordinates of pTwo are: ";
	printPoint(pTwo);
	cout << endl;
	
	cout.setf(ios::fixed);
    cout.setf(ios::showpoint);
    cout.precision(2);
    
	cout << "The Slope of the line passing thorugh pOne and PTwo is ";
	cout << findSlope(pOne, pTwo);
	return 0;
}

void getPoints(Point &thePoint)
{
	cout << "Enter the First Coordinate: ";
	cin >> thePoint.xCord;
	cout << "Enter the Second Coordinate: ";
	cin >> thePoint.yCord;
}

void printPoint(Point thePoint)
{
	cout << "(" << thePoint.xCord << ", " << thePoint.yCord << ")";
}

double findSlope(Point p1, Point p2)
{
	double slope = (p2.yCord-p1.yCord) / (p2.xCord-p1.xCord);
	return slope;
}
