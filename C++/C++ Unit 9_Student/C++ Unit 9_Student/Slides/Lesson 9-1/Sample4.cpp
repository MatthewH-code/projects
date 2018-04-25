// Call by value Example
#include <iostream>
using namespace std;

void swapVals(int &val1, int &val2);

int main()
{
	int num1 = 5;
	int num2 = 17;
	cout << "The Numbers are " << num1 << " and " << num2 << "." << endl;
	swapVals(num1, num2);
	cout << "After swaping .... " << endl;
	cout << "The Numbers are " << num1 << " and " << num2 << "." << endl;
	return 0;
}

void swapVals(int &val1, int &val2)
{
	int temp = val1;
	val1 = val2;
	val2 = temp;
}
