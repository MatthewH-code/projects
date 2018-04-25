?iostream>
#include <string>
#include <cmath>
#include <cstdlib>
using namespace std;

void threeNums(int first);

int main()
{
	int num;
	cout << "Enter an integer: " ;
	cin >> num;
	cout << "Three consecutive integers starting with " << num << " are" << endl;
	threeNums(num);
	//make a function call here
	
	return 0;
}

void threeNums(int first)
{
	cout << "{"<< first << ", " << first+1;
	cout << ", " << first+2 << "}" << endl;
	
	
	// write the cout statements that produce
	// the correct result using the given parameter
}




