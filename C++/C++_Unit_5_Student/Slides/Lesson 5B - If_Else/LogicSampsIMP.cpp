#include <iostream>
#include <string>
using namespace std;

int main()
{
	int x = 10;
	int y = -10;
	
	if(x > 10) 
	    cout << "x>10 is true " << endl;
	else 
	    cout << "x>10 is false " << endl;
	
	if (x < 10)
    	cout << "x<10 is true" <<  endl;
    else
    	cout << "x<10 is false" <<  endl;
    
    if (x >= 10)
		cout << "x>=10 is true" <<  endl;
	else
		cout << "x>=10 is false" <<  endl;
		
	if(x<=10)
	    cout << "x<=10 is true" << endl;
	else
	    cout << "x<=10 is false" << endl;
		
	if(x == 10)	
		cout << "x == 10 is true" <<  endl;
	else
		cout << "x == 10 is false" <<  endl;
		
	if (x != 10)
		cout << "x != 10  is true" <<  endl;
	else
		cout << "x != 10  is false" <<  endl;
	
	if (x+y == 0)
		cout << "x and y are opposites" << endl;
	else
		cout << "x and y are not opposites" << endl;
	
	
	
	return 0;
}
