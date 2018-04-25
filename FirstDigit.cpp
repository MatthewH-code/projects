#include <iostream>
#include <string>
using namespace std;

int FirstDigit(int num);

int main()
{
	int firstnum = 8;
	int secondnum = 23;
	int thirdnum = 123;
	cout << FirstDigit(firstnum) << endl;
	cout << FirstDigit(secondnum) << endl;
	cout << FirstDigit(thirdnum) << endl;
}

int FirstDigit(int num)
{
	return num % 10;	
}
