#include <iostream>
#include <string>
#include <cmath>
using namespace std;

bool isOdd(int num);

int oddCount(int num);

int main()
{
	cout << isOdd(5) << endl;
	cout << oddCount(123433) << endl;
}

bool isOdd(int num)
{
	if(num % 2 == 0)
		return false;
		else
			return true;
}

int oddCount(int num)
{
	int numEdit = 0;
	int oddCount = 0;
	bool odd;
	while(num > 0)
	{
		numEdit = num % 10;
		odd = isOdd(numEdit);
		if(odd == true)
		{
			oddCount++;
		}
		num = num / 10;
	}
	return oddCount;
}
