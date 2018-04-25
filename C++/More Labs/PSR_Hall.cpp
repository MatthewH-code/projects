#include <time.h>
#include <cstdlib>
#include <string>
#include <iostream>
#include <windows.h>
using namespace std;

void winnerDecider(string input, int randNum);

int main()
{
	SetConsoleTitle("Rock, Paper, Scissors");
	while(true){
		srand(time(NULL));
		int randNum = rand() % 3;
		string directions;
		string choice;
		cout << "Welcome to Rock, Paper Scissors." << endl;
		for(int i = 1;i<4;i++)
		{
			system("pause");
			system("cls");
			cout << "Round: " << i << endl;
			cout << "Do you need directions? ";
			cin >> directions;
			if(directions == "yes" || "Yes")
			{
				cout << "DIRECTIONS \nYou need to select one of 3 objects. \nSelect rock, paper, or scissors. \nThe computer will randomly select an object at the same time." << endl;
				cout << "Paper covers Rock\nRock smashes Scissors\nScissors cut Paper" << endl;
				cout << "After choices have been made, a winner of the round will be declared.\nENJOY THE GAME" << endl;
			}
			cout << "Enter your choice: " <<endl;
			cin >> choice;
			winnerDecider(choice, randNum);
		}
	}
}

void winnerDecider(string input, int randNum){
	int choice;
	if(input == "rock" || "Rock")
	{
		choice = 1;
	}
	if(input == "scissors" || "Scissors")
	{
		choice = 2;
	}
	if(input == "paper" || "Paper")
	{
		choice = 3;
	}
	cout << choice << endl;
	cout << randNum <<endl;
	system("pause");
	cout << "You slected " << input <<endl;
	cout << "The computer selected ";
	if(randNum == 1)
	cout << "Rock" <<endl;
	if(randNum == 2)
	cout << "Scissors" <<endl;
	if(randNum == 3)
	cout << "Paper" <<endl;
	int i =1;
	while(i == 1){	
	if(choice == randNum)
	{
		cout << "The contest is a tie.";
		i++;
	}
	if(choice == 1 && randNum ==2){
		cout << "Rock smashes scissors" <<endl;
		cout << "You win!" <<endl;
		i++;		
	}
	if(randNum == 1 && choice == 2){
		cout << "Rock smashes scissors" <<endl;
		cout << "The computer wins." <<endl;
		i++;
	}
	if(randNum == 2 && choice == 3){
		cout << "Scissors cuts paper" <<endl;
		cout << "The computer wins." <<endl;
		i++;
	}
	if(randNum ==3 && choice == 2){
		cout << "Scissors cuts paper" <<endl;
		cout << "You win!" <<endl;
		i++;
	}
	if(randNum == 1 && choice == 3){
		cout << "Paper covers rock" << endl;
		cout << "You win!" <<endl;
		i++;
	}
	if(randNum == 3 && choice == 1){
		cout << "paper covers rock" <<endl;
		cout << "The computer wins." <<endl;
		i++;
	}
}
}
