//Example 2 c-strings

#include <iostream>
#include <cstring>
using namespace std;


int main()
{
	char s1[] = "cat";
	char s2[] = "dog";
	char s3[] = "car";
	char s4[] = "dog";
	
	//testing s1, s2
	cout << s1 << " is ";
	if(strcmp(s1,s2) == 0)
	   	cout << "the same as ";
	else if(strcmp(s1,s2) > 0)
		cout << "greater than ";
	else
		cout << "less than ";
	cout << s2 << "." << endl;
	
	//testing s1,s3
	cout << s1 << " is ";
	if(strcmp(s1,s3) == 0)
	   	cout << "the same as ";
	else if(strcmp(s1,s3) > 0)
		cout << "greater than ";
	else
		cout << "less than ";
	cout << s3 << "." << endl;
	
	//testing s2, s4
	cout << s2 << " is ";
	if(strcmp(s2,s4) == 0)
	   	cout << "the same as ";
	else if(strcmp(s2,s4) > 0)
		cout << "greater than ";
	else
		cout << "less than ";
	cout << s4 << "." << endl;
	
	//testing the first 2 letters of s1 nd s3
	cout << "The first 2 letters of " << s1 << " are ";
	if(strncmp(s1,s3,2) == 0)
	   	cout << "the same as ";
	else if(strncmp(s1,s3,2) > 0)
		cout << "greater than ";
	else
		cout << "less than ";
	cout << "the first 2 letters of " << s3 << "." << endl;
	
	
	// testing the first 2 letters of s3,s4
	cout << "The first 2 letters of " << s3 << " are ";
	if(strncmp(s3,s4,2) == 0)
	   	cout << "the same as ";
	else if(strncmp(s3,s4,2) > 0)
		cout << "greater than ";
	else
		cout << "less than ";
	cout << "the first 2 letters of " << s4 << "." << endl;
	
	
	return 0;
}



