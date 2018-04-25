// Matthew Hall
//Lab 11A shell
using namespace std;
#include <iostream>
#include <cstring>

int vCount(char string[]);

int main()
{
	char s1[] = "cnnnbc";
	char s2[] = "figureskating";
	char s3[] = "abca";
	char s4[] = "uoiea";
	
	//Uncomment the lines below when your function is complete to test the function
	cout << "s1 count <0> : " << vCount(s1) << endl;
	cout << "s2 count <5> : " << vCount(s2) << endl;
	cout << "s3 count <2> : " << vCount(s3) << endl;
	cout << "s4 count <5> : " << vCount(s4) << endl;
	return 0;
}

int vCount(char string[]){
	char vowel[] = "aeiou";
	int i = 0;
	int vowels = 0;
	while (string[i] != '\0'){
		for(int x=0;x<5;x++){
		if(string[i] == vowel[x])
		vowels++;
	}
	i++;
}
	return vowels;
}
