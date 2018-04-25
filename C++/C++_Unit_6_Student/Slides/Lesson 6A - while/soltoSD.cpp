#include <iostream>
#include <string>
using namespace std;

int main()
{
		int number = 9154;
		int total = 0;
		while( number > 0 )
		{
		   total = total + number % 10;
		   number = number / 10;
		}
		cout << total << endl;

	return 0;
}
