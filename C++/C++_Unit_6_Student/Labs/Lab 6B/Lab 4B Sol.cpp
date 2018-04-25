#include <iostream>
#include <string>
using namespace std;

int numKeep;
int count;
int reverse(int num);
int reversed;


int main()
{
	cout << numKeep << " reversed is " << reverse(234) << endl;
	cout << numKeep << " reversed is " << reverse(10000) << endl;
	cout << numKeep << " reversed is " << reverse(111) << endl;
	cout << numKeep << " reversed is " << reverse(9005) << endl;
	cout << numKeep << " reversed is " << reverse(84645) << endl;
	cout << numKeep << " reversed is " << reverse(8547) << endl;
	cout << numKeep << " reversed is " << reverse(123456789) << endl;
return 0;
}

int reverse(int num)
{
	reversed=0;
	numKeep = num;
	while(num > 0)
	{
		reversed=reversed*10+(num%10);
		num/=10;
	}
	return reversed;
}
