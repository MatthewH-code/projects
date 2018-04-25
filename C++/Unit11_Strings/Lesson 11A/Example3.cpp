// Example 3 - strlen code

using namespace std;
#include <cstring>
#include <iostream>

int mylen(char strg[]);

int main()
{
	
	char s[] = "tester";
	cout << s << endl;
	cout << "Getting length using strlen()" << endl;
	cout << strlen(s) << endl;
	cout << "\n" << endl;
	cout << "Getting length using mylen()" << endl;
	cout << mylen(s) << endl;
	cout << "\n" << endl;
	
	
	return 0;
}

int mylen(char strg[])
{
	int i = 0;
	while (strg[i] != '\0')
		i++;
	return i;
}
