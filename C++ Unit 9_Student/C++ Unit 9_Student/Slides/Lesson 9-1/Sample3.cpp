// Call by reference Example
#include <iostream>
using namespace std;

void mystery(int &num);

int main()
{
	int x = 5;
	cout << x << endl;
	mystery(x);
	cout << x << endl;
	return 0;
}

void mystery(int &num)
{
	num = num *2;
}
