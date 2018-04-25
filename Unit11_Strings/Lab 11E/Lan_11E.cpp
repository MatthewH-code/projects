//Matthew Hall

using namespace std;
#include <iostream>
#include <cstring>

int main()
{
	char wordList[10][33] = {"cat", "hat", "bat", "mat", "sat",
							"bug", "hug", "awesome", "unicorn", 
							"rainbows"};

//Prints out the WordList							
	for(int i = 0; i < 9; i++)
	     cout << wordList[i] << ", ";						
	cout << wordList[9] << endl;

//Write the algorithm that would sorr the wordlist in alphabetical order
//Write your code between the 2 print statements.	

char temp[33] = "";
for(int i =0;i<10;i++){
	int sIndex = i;
	for(int j = i;j<10;j++)
		if(strcmp(wordList[j],wordList[sIndex]) < 0 )
			sIndex = j;
	strcpy(temp,wordList[sIndex]);
	strcpy(wordList[sIndex], wordList[i]);
	strcpy(wordList[i], temp);
}
	
//Prints out the wordList after sort
	for(int i = 0; i < 9; i++)
	     cout << wordList[i] << ", ";						
	cout << wordList[9] << endl;
	
	
	return 0;
}
