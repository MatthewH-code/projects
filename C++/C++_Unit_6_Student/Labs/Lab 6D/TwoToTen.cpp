#include <iostream>
#include <string>
using namespace std;

int main()
{
	int num = 1010;
	int numcount = num;
	int dec = 0;
	int change = 0;
	int power =1;
	int count = 0;
	
	while(numcount > 0)
	{
		num/=10;
		count++;
	}
	
	cout << count << endl;
	
	for(int i=1; i<count; i++)
	{
		change=num%10;
		num=num/10;
		change=change*power;
		power=power*2;
		dec=dec+change;
	}
	cout << dec << endl;
	return 0;
}

