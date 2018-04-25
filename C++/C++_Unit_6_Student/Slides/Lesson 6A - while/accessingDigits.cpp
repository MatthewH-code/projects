#include <iostream>
#include <string>
using namespace std;

int main()
{
		int number = 9154;
		while( number > 0 )
		{
		   cout << number % 10 << endl;
		   number = number / 10;
		}

	return 0;
}
