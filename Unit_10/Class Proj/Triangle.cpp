//Matthew Hall

using namespace std;
#include "Triangle.h"
#include <iostream>
#include <cmath>

Triangle :: Triangle()
{
	s1 = 1;
	s2 = 2;
	s3 = 2;
}

Triangle :: Triangle(double ps1, double ps2, double ps3)
{
	s1 = ps1;
	s2 = ps2;
	s3 = ps3;
}

Triangle :: Triangle(double ps1)
{
	s1 = ps1;
	s2 = ps1;
	s3 = ps1;
}

void Triangle :: printTri()
{
	cout << s1 << ", " << s2 << ", " << s3 << endl;
}
void Triangle :: checkIso()
{
	if(s1==s2||s2==s3||s3==s1)
	{
		cout << "The Triangle is Isoceles" << endl;
	}
	else
	{
		cout << "The Triangle is not Isosceles" <<endl;
	}
}
double Triangle :: findPerim()
{
	return s1+s2+s3;
}
double Triangle :: findArea()
{
	double s = (s1+s2+s3)/2;
	double Area = sqrt(s*(s-s1)*(s-s2)*(s-s3));
	return Area;
}
