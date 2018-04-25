//Example 1 c-strings

#include <iostream>
#include <cstring>
using namespace std;


int main()
{
	char s1[11] = "Hello";
	cout << "Thrid Letter: " << s1[2] << endl;
	cout << "length of Hello: " << strlen(s1) << endl;
	strcpy(s1, "Technology");
	cout << "Thrid Letter: " << s1[2] << endl;
	cout << "length of Technology: " << strlen(s1) << endl; 
	cout << "s1 contains: " << s1 << endl;
	cout << "\n" << endl;
	char s2[] = "Century";
	strcpy(s1, s2);	
	cout << "s1 contains: " << s1;
	cout << "\tlength is: " << strlen(s1) << endl;
	strcpy(s1, "");
	cout << "s1 contains: " << s1;
	cout << "\t\tlength is: " << strlen(s1) << endl;
	strncpy(s1, s2, 3);
	cout << "s1 contains: " << s1;
	cout << "\tlength is: " << strlen(s1) << " Why not just Cen" <<endl;
	cout << "\n" << endl;
	cout << "Trying again with Cen" << endl;
	strcpy(s1, "   ");
	strncpy(s1, s2, 3);
	cout << "s1 contains: " << s1;
	cout << "\tlength is: " << strlen(s1) << endl;
	
	 
	
	return 0;
}



