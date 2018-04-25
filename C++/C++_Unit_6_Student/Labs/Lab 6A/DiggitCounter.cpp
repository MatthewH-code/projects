#include <iostream>
#include <string>
using namespace std;

int main()
{
	int count = 0,num = 234;
	while(num > 0)
	{
		num = num % 10;
		count = count + 1;
	}
	cout << count << endl;
	return 0;
}
