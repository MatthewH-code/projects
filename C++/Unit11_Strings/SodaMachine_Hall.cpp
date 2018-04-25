//Matthew Hall
#include <iostream>
#include <unistd.h>
#include <exception>
#include <stdexcept>
#include <limits>
using namespace std;

void errorChecker(int &input);
bool correctInput(int input);
bool drinkCheck(int coke,int dietCoke,int sprite,int drPepper,int orangeDrink,int water);
bool moneyCheck(int quarters, int dimes, int nickels);
void changeCalc(int &quarters, int &dimes, int &nickels,int allInput);
void addMoney(int input,int &addQuarters, int &addDimes, int &addNickels);

int main() {
	int quarters = 2;
	int dimes = 10;
	int nickels = 7;
	int coke = 2;
	int dietCoke = 3;
	int sprite = 0;
	int drPepper = 1;
	int orangeDrink = 1;
	int water = 1;
	int input = 0;
	int allInput = 0;
	char drinkInput = 'N';
	double change = 0;
	int addQuarters = 0;
	int addDimes= 0;
	int addNickels=0;
	cout.setf(ios::fixed);
	cout.precision(2);
	while(drinkCheck(coke,dietCoke,sprite,drPepper,orangeDrink,water) == true && moneyCheck(quarters,dimes,nickels) == true){
		input = 0;
		allInput = 0;
		change = 0;
		int count = 0;
		addQuarters = 0;
		addDimes= 0;
		addNickels=0;
	while(input != -1){
		input = 0;
		if(count > 0)
		cout << "Amout Inputed: " << (double)allInput / 100  << endl;
		cout << "Input the amount you would like to put in one at a time. " <<endl;
		cout << "5(Nickel), 10(Dime), 25(Quarter), 100(Doallar), -1(Goes to next step)" << endl;
		cin >> input;
		cout << endl;
		errorChecker(input);
		if(input != -1)
		allInput += input;
		addMoney(input,addQuarters,addDimes,addNickels);
		count++;		
	}
	cout << "Input the drink you would like (C=Coke, D=Diet Coke, S=Sprite, P=Dr.Pepper,\nO=Orange Drink, W=Water, N=Cancel order and return Money)" << endl;
	cin >> drinkInput;
	if(drinkInput == 'C'){
		system("cls");
		cout << "Amount Inputed: " << (double)allInput / 100 << endl;	
		cout << "You chose Coke." << endl;
		if(coke > 0){
				coke-=1;
				cout << "There are " << coke << " Cokes left" << endl;
				if(allInput == 85){
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "You inputed exact change. Dispensing drink" << endl;
				cout << "Enjoy!\n" << endl;
			}
				else if(allInput > 85){
				change = allInput - 85;
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "And here is your change " << change / 100 << ", " << endl;
				changeCalc(quarters,dimes,nickels,change);
				cout << "Enjoy!\n" << endl;
			}
			else
			cout << "You did not input enough money for this Item. Refunding Money\n" << endl;
		}
		else
		cout << "There are no Cokes left." << " Refunding Money." << endl;
	
	}
	else if(drinkInput == 'P'){
		system("cls");
		cout << "Amount Inputed: " << (double)allInput / 100 << endl;	
		cout << "You chose Dr. Pepper." << endl;
		if(drPepper > 0){
				drPepper-=1;
				cout << "There are " << drPepper << " Dr. Peppers left" << endl;
				if(allInput == 85){
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "You inputed exact change. Dispensing drink" << endl;
				cout << "Enjoy!\n" << endl;
			}
				else if(allInput > 85){
				change = allInput - 85;
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "And here is your change " << change / 100 << ", " << endl;
				changeCalc(quarters,dimes,nickels,change);
				cout << "Enjoy!\n" << endl;
			}
			else
			cout << "You did not input enough money for this Item. Refunding Money\n" << endl;
		}
		else
		cout << "There are no Dr. Peppers left." << " Refunding Money." << endl;
	}
	else if(drinkInput == 'S'){
		system("cls");
		cout << "Amount Inputed: " << (double)allInput / 100 << endl;	
		cout << "You chose Sprite." << endl;
		if(sprite > 0){
				sprite-=1;
				cout << "There are " << sprite << " Sprite's left" << endl;
				if(allInput == 85){
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "You inputed exact change. Dispensing drink" << endl;
				cout << "Enjoy!\n" << endl;
			}
				else if(allInput > 85){
				change = allInput - 85;
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "And here is your change " << change / 100 << ", " << endl;
				changeCalc(quarters,dimes,nickels,change);
				cout << "Enjoy!\n" << endl;
			}
			else
			cout << "You did not input enough money for this Item. Refunding Money\n" << endl;
		}
		else
		cout << "There are no Sprites left." << " Refunding Money." << endl;
	}
	else if(drinkInput == 'D'){
		system("cls");
		cout << "Amount Inputed: " << (double)allInput / 100 << endl;	
		cout << "You chose Diet Coke." << endl;
		if(dietCoke > 0){
				dietCoke-=1;
				cout << "There are " << dietCoke << " Diet Cokes left" << endl;
				if(allInput == 85){
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "You inputed exact change. Dispensing drink" << endl;
				cout << "Enjoy!\n" << endl;
			}
				else if(allInput > 85){
				change = allInput - 85;
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "And here is your change " << change / 100 << ", " << endl;
				changeCalc(quarters,dimes,nickels,change);
				cout << "Enjoy!\n" << endl;
			}
			else
			cout << "You did not input enough money for this Item. Refunding Money\n" << endl;
		}
		else
		cout << "There are no Diet Cokes left." << " Refunding Money." << endl;
	}
	else if(drinkInput == 'O'){
		system("cls");
		cout << "Amount Inputed: " << (double)allInput / 100 << endl;	
		cout << "You chose Orange Drink." << endl;
		if(coke > 0){
				orangeDrink-=1;
				cout << "There are " << orangeDrink << " Orange Drinks left" << endl;
				if(allInput == 85){
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "You inputed exact change. Dispensing drink" << endl;
				cout << "Enjoy!\n" << endl;
			}
				else if(allInput > 85){
				change = allInput - 85;
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "And here is your change " << change / 100 << ", " << endl;
				changeCalc(quarters,dimes,nickels,change);
				cout << "Enjoy!\n" << endl;
			}
			else
			cout << "You did not input enough money for this Item. Refunding Money\n" << endl;
		}
		else
		cout << "There are no Orange Drinks left." << " Refunding Money." << endl;
	}
	else if(drinkInput == 'W'){
		system("cls");
		cout << "Amount Inputed: " << (double)allInput / 100 << endl;	
		cout << "You chose Water." << endl;
		if(water > 0){
				water-=1;
				cout << "There are " << water << " Waters left" << endl;
				if(allInput == 125){
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "You inputed exact change. Dispensing drink" << endl;
				cout << "Enjoy!\n" << endl;
			}
				else if(allInput > 125){
				change = allInput - 125;
				quarters+=addQuarters; dimes+=addDimes; nickels+=addNickels;
				cout << "And here is your change " << change / 100 << ", " << endl;
				changeCalc(quarters,dimes,nickels,change);				
				cout << "Enjoy!\n" << endl;
			}
			else
			cout << "You did not input enough money for this Item. Refunding Money\n" << endl;
		}
		else
		cout << "There are no Waters left." << " Refunding Money." << endl;
	}
	else if(drinkInput == 'N'){
		system("cls");
		cout << "Canceling payment." << endl;
		cout << "Returning Money. Have a good day!\n" << endl;
	}
	else
		cout << "Invalid Input. Canceling payment\nReturning Money. Have a good day!" << endl;
}
}

void errorChecker(int &input)
{
	while(!cin){
    			// user didn't input a number
    			cin.clear(); // reset failbit
    			cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
    			cout << "Your input was not valid. Please try again: ";
    			cin >> input;
    		}
    while(correctInput(input) == false){
    	cout << "Your input was not valid. Please try again: ";
    	cin >> input; 
    	while(!cin){
    			// user didn't input a number
    			cin.clear(); // reset failbit
    			cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); //skip bad input
    			cout << "Your input was not valid. Please try again: ";
    			cin >> input;    	
	}

}
}
bool correctInput (int input){
	bool check = true;
	if(input == 5)
		check = true;
	else if(input == 10)
		check = true;
	else if(input == 25)
		check =true;
	else if(input == 100)
		check = true;
	else if (input == -1)
		check = true;
	else 
		check = false;
		
	return check;
}

bool drinkCheck(int coke,int dietCoke,int sprite,int drPepper,int orangeDrink,int water){
	bool check = true;
	if(coke > 0)
		check = true;
	else if(dietCoke > 0)
		check = true;
	else if(sprite > 0)
		check = true;
	else if(drPepper > 0)
		check = true;
	else if(orangeDrink > 0)
		check = true;
	else if(water > 0)
		check = true;
	else
		check = false;
	return check;
}

bool moneyCheck(int quarters, int dimes, int nickels){
	bool check = true;
	if(quarters > 0)
		check = true;
	else if(dimes > 0)
		check = true;
	else if(nickels > 0)
		check = true;
	else
		check = false;
	return check;
}

void changeCalc(int &quarters, int &dimes, int &nickels, int allInput){
	int returnQuarters = 0;
					while(quarters > 0  && allInput-25 >=0)
					{
						allInput -= 20;
						quarters--;
						returnQuarters += 1;
					}
					int returnDimes = 0;
					while(dimes > 0 && allInput-10 >=0)
					{
						allInput -= 10;
						dimes--;
						returnDimes += 1;
					}
					int returnNickels = 0;
					while(nickels > 0 && allInput-5 >=0)
					{
						allInput -= 5;
						nickels--;
						returnNickels += 1;
					}
					cout << "You receive " << returnQuarters << " Quarters, ";
					cout << returnDimes << " dimes, and " << returnNickels  << " Nickels." << endl;
		}
		
void addMoney(int input,int &addQuarters,int &addDimes,int &addNickels){
					while(input-25 ==0)
					{
						input -= 25;
						addQuarters++;
					}
					while(input-10 ==0)
					{
						input -= 10;
						addDimes++;
					}
					while(input-5 ==0)
					{
						input -= 5;
						addNickels++;
					}
}
