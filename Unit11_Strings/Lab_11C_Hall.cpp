// Matthew Hall
using namespace std;
#include <iostream>
#include <cstring>


int main(){
	char wordList[10][50] = {"jesus", "Awesome", "bacon", "potato", "jeffie", "obese", "premium", "meth", "unicorn", "rainbows"};
	for(int i =0;i<9;i++){
		cout << wordList[i] << ", ";
	}
	cout << wordList[9] << endl;
	char first[50] = "";
	strcpy(first, wordList[0]);
	for(int i = 0;i<10;i++){
		int value = 0;
		value = strcmp(wordList[i], first);
		if(value < 0)
			strcpy(first, wordList[i]);
	}
	cout << first<<endl;
	
	
	char wordList2[10][50] = {"bat", "bam", "boo", "bame", "bamoo", "bambo", "alpha", "cae", "cat", "alpha"};
	for(int i =0;i<9;i++){
		cout << wordList2[i] << ", ";
	}
	cout << wordList2[9] << endl;
	char first2[50] = "";
	strcpy(first2, wordList2[0]);
	for(int i = 0;i<10;i++){
		int value = 0;
		value = strcmp(wordList2[i], first2);
		if(value < 0)
			strcpy(first2, wordList2[i]);
	}
	cout << first2<<endl;
	
	char wordList3[10][50] = {"and", "his", "name", "is", "john", "cena", "loud", "air", "horn", "noises"};
	for(int i =0;i<9;i++){
		cout << wordList3[i] << ", ";
	}
	cout << wordList3[9] << endl;
	char first3[50] = "";
	strcpy(first3, wordList3[0]);
	for(int i = 0;i<10;i++){
		int value = 0;
		value = strcmp(wordList3[i], first3);
		if(value < 0)
			strcpy(first3, wordList3[i]);
	}
	cout << first3<<endl;
	
	char wordList4[10][50] = {"booth", "dasan", "myles", "kate", "jeff", "jordan", "peter", "charlie", "hays", "robey"};
	for(int i =0;i<9;i++){
		cout << wordList4[i] << ", ";
	}
	cout << wordList4[9] << endl;
	char first4[50] = "";
	strcpy(first4, wordList4[0]);
	for(int i = 0;i<10;i++){
		int value = 0;
		value = strcmp(wordList4[i], first4);
		if(value < 0)
			strcpy(first4, wordList4[i]);
	}
	cout << first4<<endl;
	
	/*for(int i = 0;i<11;i++){
		if(wordList[i][0] == first[0]){
		for(int x = 1;i<strlen(wordList[i]);x++){
			while(wordList[i][x] == first[0])
		}
	}
	else{
		if(wordList[i][0] < first[0]){
			strcpy(first, wordList[i]);
			
		}
	}
}
	
	
	 /*for(int i = 0;i<10;i++){
		if(int(wordList[i][0]) < int(first[0])){
			strcpy(first, wordList[i]);
		}
	}
	*/
}

