#include <iostream>
#include <string>
#include <cmath>
using namespace std;

int main()
{
	int pass=6392;
	int passinput;
	while(passinput!=pass)
	{
		cout << "Input your pass: ";
		cin >> passinput;
	}
	cout << "Correct Pass" << endl;
	return 0;
}
