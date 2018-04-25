#include <iostream>
using namespace std;
#include <string>
#include <unistd.h>
#include <iomanip>
#include<stdlib.h>
#include<math.h>
#include <sstream>
#include <bitset>
#include <windows.h>
void twoToTen(int &num);
void tenToTwo(int num);
int main()
{
	SetConsoleTitle("Base Converter");
	while(true)
	{
		RESTART:
                                                                                                                                                                                                                                                                                                       
		cout << "This is a mathmatical converter. it can convert Hexadecimal, Decimal, and Binary. All to and from eachother." << endl;
		cout << "Type what the starting number's base is (H = Hex, B = Binary, and D = Decimal): ";
		char from;
		cin >> from;
		system("cls");
		cout << "Converting from: " << from <<endl << endl;
		cout << "Now type what you want to convert to (H = Hex, B = Binary, and D = Decimal): ";
		char to;
		cin >> to;
		system("cls");
		cout << "Converting from: " << from <<endl;
		cout << "Converting to: " << to << endl << endl;
		
		if(from == 'b' || from == 'B')
		{
			if(to == 'd' || to == 'D'){ //Binary to decimal
			cout << "Now type the original number: ";
			int origNum = 0;
			cin >> origNum;
			cout << "Computing..." << endl;
			system("cls");
			cout << "From: Binary" <<endl;
			cout << "To : Decimal" <<endl;
			cout << "Original number: " << origNum << endl << endl;
			int num = origNum;
			cout << origNum << " to " << to << " is: ";
			twoToTen(num);
			cout << num << endl;
			cout << endl << "Press ENTER to restart program." << endl;
			system("pause");
			system("cls");
			goto RESTART;
			}
			if(to == 'h' || to == 'H'){ //Binary to Hex
			cout << "Now type the original number: ";
			long int longint=0;
			string buf;
			cin >> buf;
			int len=buf.size();
			for(int i=0;i<len;i++){
			longint+=( buf[len-i-1]-48) * pow(2,i);}
			cout << "Computing..." << endl;
			system("cls");
			cout << "Converting from: Binary"<<endl;
			cout << "Converting to: Hex" << endl;
			cout << "Original number: " << buf << endl << endl;
			cout << buf << " to " << to << " is: ";
			cout<<setbase(16);
			cout<<longint << endl;
			cout << endl << "Press ENTER to restart program." << endl;
			system("pause");
			system("cls");
			goto RESTART;
			}	
		}
		if(from == 'd' || from == 'D')
			if(to == 'b' || to == 'B'){ //Decimal to binary
			cout << "Now type the original number: ";
			int origNum = 0;
			cin >> origNum;
			cout << "Computing..." << endl;
			system("cls");
			cout << "Converting from: Decimal"<<endl;
			cout << "Converting to: Binary" << endl;
			cout << "Original number: " << origNum << endl << endl;
			int num = origNum;	
			cout << origNum << " to " << to << " is: ";
			tenToTwo(num);
			cout << endl << "Press ENTER to restart program." << endl;
			system("pause");
			system("cls");	
			goto RESTART;
			}
			if(to == 'h' || to == 'H'){ //Decimal to Hex
			cout << "Now type the original number: ";
			int origNum = 0;
			cin >> origNum ;
			cout << "Computing..." << endl;
			system("cls");
			cout << "Converting from: Decimal" <<endl;
			cout << "Converting to: Hex" << endl;
			cout << "Original number: " << origNum << endl << endl;
			int num = origNum;	
			cout << origNum << " to " << to << " is: ";
			cout << hex << num;
			cout << endl << "Press ENTER to restart program." << endl;
			system("pause");
			system("cls");
			goto RESTART;
			}
		if(from == 'h' || from == 'H')
			if(to =='d' || to == 'D'){ //Hex to Decimal
			cout << "Now type the original number: ";
			int origNum = 0;
			std::cin >> std::hex >> origNum;
			cout << "Computing..." << endl;
			system("cls");
			cout << "Converting from: Hex" <<endl;
			cout << "Converting to: Decimal" << endl;
			cout << "Original number: " << origNum << endl << endl;
			int num = origNum;	
			cout << origNum << " to " << to << " is: ";
    		std::cout << num << std::endl;
			cout << endl << "Press ENTER to restart program." << endl;
			system("pause");
			system("cls");
			goto RESTART;
			}
			if(to == 'b' || to == 'B'){ //Hex to Binary
			cout << "This part of the program is currently under construction." << endl;
			system("pause");
			system ("cls");
			goto RESTART;
			}
	}
}

void twoToTen(int &num)
{
		int count = 0;
		int num2 = num;
		int change = 0;
		int power = 1;
		int dec = 0;
		
		while(num2 > 0){
		num2/=10;
		count++;
	}
	
	for(int i=0; i<count; i++)
	{
		change=num%10;
		num=num/10;
		change=change*power;
		power=power*2;
		dec=dec+change;
	}
	num = dec;
}

void tenToTwo(int num)
{
    string bin;
    char holder=' ';
    while(num!=0)
    {
        holder=num%2+'0';
        bin=holder+bin;
        num/=2;
    }
    cout<<bin;
}
