#include <iostream>
#include <string>
using namespace std;

int count = 0;
int counter(int num);
int numKeep;

int main()
{
	cout << numKeep << " has " << counter(234) << " digits " << endl;
	cout << numKeep << " has " << counter(11111) << " digits " << endl;
	cout << numKeep << " has " << counter(111) << " digits " << endl;
	cout << numKeep << " has " << counter(9005) << " digits " << endl;
	cout << numKeep << " has " << counter(84645) << " digits " << endl;
	cout << numKeep << " has " << counter(123456789) << " digits " << endl;
}

int counter(int num)
{
	count = 0;
	numKeep = num;
	while(num > 0)
	{
		num/=10;
		count++;
	}
	return count;
}
