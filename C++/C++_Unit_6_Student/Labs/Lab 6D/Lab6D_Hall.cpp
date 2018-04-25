#include <iostream>
#include <string>
using namespace std;
int base10(int num);
int dec = 0;
int change = 0;
int power =1;
int count = 0;


int main()
{
	cout << 1010 << " == " << base10(1010) << endl;
	cout << 1100 << " == " << base10(1100) << endl;
	cout << 1110 << " == " << base10(1110) << endl;
	cout << 1111 << " == " << base10(1111) << endl;
	cout << 11111 << " == " << base10(11111) << endl;
	cout << 111111 << " == " << base10(111111) << endl;
	cout << 1110101 << " == " << base10(1110101) << endl;
}

int base10(int num)
{
	int numcount = num;
	int numChange = num;
	int dec = 0;
	int change = 0;
	int power =1;
	int count = 0;
	
	while(numcount > 0)
		numcount/=10;
		count++;
	}
	
	for(int i=0; i<count; i++)
	{
		change=numChange%10;
		numChange=numChange/10;
		change=change*power;
		power=power bad bitc		dec=dec+change;
	}
	return dec;
}

