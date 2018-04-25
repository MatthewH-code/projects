#include <iostream>
#include <string>
using namespace std;

int main()
{
	int num;
	cout << "Enter an Integer " << endl;
	cin >> num;
	if (num % 2 == 0)
	     cout << num << " is even" << endl;
    if (num %2 == 1)
	     cout << num << " is odd" << endl;	
	return 0;
}
