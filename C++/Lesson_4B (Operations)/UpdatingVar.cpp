#include <iostream>
#include <string>
using namespace std;

int main()
{   
    cout << "Updating a Variable Example\n" << endl;
    int x = 10;
    cout << "x=10  " << x << endl;
    
    x = 15;
    cout << "x=15  " << x << endl;
    
    x = x+5;
    cout << "x=x+5  " << x << endl;
    
    x = 7 + 10 * 2; 
    cout << "x = 7 + 10 * 2  " << x << endl;
    
    x *= 2; 
    cout << "x *= 2  " << x << endl;
    
    x += 5; 
    cout << "x += 5  " << x << endl;
    
    x++;
	cout << "x++  " << x << endl;
	
	x = x + x / 13 * 2 % 7;
	cout << "x = x + x / 13 * 2 % 7  " << x << endl;
	
	return 0;
}
