//Matthew Hall
using namespace std;
#include <iostream>
#include "Triangle.h"
void printDecStuff(double d1);
int main()
{
	Triangle t1;
	Triangle t2(3,4,5);
	t1.printTri();
	t2.printTri();
	Triangle t3(3);
	t3.printTri();
	cout << "Perim is " << t2.findPerim() <<endl;
	cout << "area is " << t2.findArea() << endl;
	cout << "The area of t2 is: ";
	printDecStuff(t2.findArea());
	cout << endl;
	t3.checkIso();
	cout << endl;
	t2.checkIso(); 
	return 0;
}

void printDecStuff(double d1)
{
	cout.setf(ios::fixed);
	cout.precision(2);
	cout << d1;
}
