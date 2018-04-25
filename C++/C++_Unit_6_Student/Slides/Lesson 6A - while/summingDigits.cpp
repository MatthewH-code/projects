#include <iostream>
#include <string>
using namespace std;

int main()
{
		int number = 9154;
		int total = 0;

		while(number>0)
		{
			total=total+number%10;
			number=number/10;
		}
		cout<<total;//while number is greater than 0
		   //add the right most digit to the total
		   //chop off the right most digit of number

		//print out the number

	return 0;
}
