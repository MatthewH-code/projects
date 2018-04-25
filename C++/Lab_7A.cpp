#include <iostream>
#include <cmath>

using namespace std;

double triArea(double a, double b, double c); 


int main()
{
	cout.setf(ios::fixed);
	cout.precision(2);
    cout << "The Area of a triangle with sides 4,5,6 is: " << triArea(4,5,6) << endl;
    cout << "The Area of a triangle with sides 45,2,6 is: " << triArea(5,2,6) << endl;
    cout << "The Area of a triangle with sides 10,12,20 is: " << triArea(10,12,20) << endl;
    cout << "The Area of a triangle with sides 13,12,24 is: " << triArea(13,12,24) << endl;
    cout << "The Area of a triangle with sides 7,100,108 is: " << triArea(7,100,108) << endl;
    cout << "The Area of a triangle with sides 52,12,61 is: " << triArea(52,12,61) << endl;
	
	return 0;
}

double triArea(double a, double b, double c)
{
	double theArea = 0.0;
	double s = 0.0;
	s = (a+b+c) / 2;
	theArea = sqrt(s * (s-a) * (s-b) * (s-c) );
	if(a+b>c)
	return theArea;
	else{
		if(b+c>a)
			return theArea;
			else{
				if(c+a>b)
				return theArea;
				else{
					return 0.0;
}
}
}
}


