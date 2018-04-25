// Call by value Example
#include <iostream>
using namespace std;

int digitCount(int num);

int main()
{
	int integer;
	cout << "Enter an integer: ";
	cin >> integer;
	cout << "\n" << integer << " has " 
	     << digitCount(integer) << " digits." << endl;
	return 0;
}

int digitCount(int num)
{
	int count = 0;
	while(num > 0)
	{
		num = num/10;
		count++;
	}
	return count;
}
