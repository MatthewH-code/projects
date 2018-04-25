#include <iostream>
using namespace std;
#include <cstdlib>
#include <time.h>
#include <typeinfo>
#include <exception>
#include <stdexcept>
#include <limits>
#include <windows.h>
void errorChecker(int &guess, int randNum);
void lowerOrHigher(int guess, int randNum);

int main(){
	SetConsoleTitle("Random Number Guessing");
	while(true){
	
	srand(time(NULL));
	int randNum = rand() % 99 + 1;
	cout << "This program will prompt you to guess a number between 1-100 until you guess it." << endl << endl;
	cout << "Guess a number from 1-100: ";
	int guess = 0;
	cin >> guess;
	int i = 0;
	for(i = 1; guess != randNum; i++)
	{
			system("cls");
			cout << "Number of Guesses: " << i << endl << endl;
			errorChecker(guess, randNum);
	}
	cout << "You guessed the number correctly in " << i << " tries" << endl << "Good Job!" << endl;
	cout << "Press ANY button to restart the program";
	system("pause");
	system("cls");
}
}

void lowerOrHigher(int guess, int randNum)
{
	if(guess < randNum)
	{
		cout << "You need to go higher with your guess: "; 
	}
	else{
		cout << "You need to go lower with your guess: ";
	}
}

void errorChecker(int &guess, int randNum)
{
	while(!cin){
    			// user didn't input a number
    			cin.clear(); // reset failbit
    			cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
    			cout << "Your input was not numeric. Please re-input a number between 1 and 100: ";
    			cin >> guess;
}	
		if(guess < 1 || guess > 100)
		{
			cout << guess << " Is less then 1 or greater then 100, Please type a number from 1-100: ";
			cin >> guess;
			while(!cin){
    		// user didn't input a number
    			cin.clear(); // reset failbit
    			cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
    			cout << "Your input was not numeric. Please re-input a number between 1 and 100: ";
   	 			cin >> guess;
}
			
		}
		else{
			lowerOrHigher(guess, randNum);
			cin >> guess;
			while(!cin){
    			// user didn't input a number
    			cin.clear(); // reset failbit
    			cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
    			cout << "Your input was not numeric. Please re-input a number between 1 and 100: ";
    			cin >> guess;
}
			}
}
