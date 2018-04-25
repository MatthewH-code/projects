// Pre-Initializing values in a Struct

#include <iostream>
using namespace std;

struct Point
{
	double xCord;
	double yCord;
};

int main()
{
	Point p1 = {3.2, 5.1};
	Point p2 = {5.7};
	//Point p3 = {3.2, 5.1, 5.7};
	
	cout << "Your first Point is (" << p1.xCord  << ", " << p1.yCord << ")" << endl;
	cout << "Your second Point is (" << p2.xCord  << ", " << p2.yCord << ")" << endl;
	return 0;
}
