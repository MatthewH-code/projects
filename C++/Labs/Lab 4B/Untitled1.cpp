#include <iostream>
#include <string>
using namespace std;

int IfnotEqual(int a, int b, int c);

int main()
{
	cout << "30 = " << IfnotEqual(30, 0, 0) << endl;
	cout << "6 = " << IfnotEqual(1, 2, 3) << endl;
	cout << "0 = " << IfnotEqual(1, 1, 1) << endl;
	cout << "20 = " << IfnotEqual(0, 20, 0) << endl;
	cout << "10 = " << IfnotEqual(0, 0, 10) << endl;
	
	return 0;	
}

int IfnotEqual(int a, int b, int c)
{
	if(a == b && b == c)
		return 0;
	if(a == b)
		return c;
	if(b == c)
		return a;
	if(a == c)
		return b;
	else
		return a + b + c;
}
