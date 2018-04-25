//Matthew Hall

using namespace std;
#include <iostream>

int main() {
	int trans = 10;
	int withdrawl;
	int totalMoney = 1500;
	int twenty = 50;
	int ten = 50;
	
	while(trans>0){
		if(totalMoney >= 10){
			cout << "Enter the ammount you wish to withdrawl" << endl;
			cout << "Ammount must be divisible by 10 and" << endl;
			cout << "Less than $200" << endl;
			cin >> withdrawl;
			cout << endl;
			totalMoney = totalMoney - withdrawl;
			trans--;	
		}
		else 
			trans = 0;
	}
   
   
   
    /*int maximum = 200;
    int transactions = 10;
    int day = 1;
    int twenty = 20;
    int numOfTwenty = 50;
    int ten = 10;
    int numOfTen = 50;
    bool isTrue = true;
    
    while(isTrue){
		for(int i = 1;i<transactions;i++){
    		if(numOfTwenty == 0 && numOfTen == 0)
    		isTrue = false;
			int request;
    		int returnTwenty = 0;
    		int returnTen =0;
    		int count = 0;
    		cout << "How much would you like to withdrawl?" << endl;
    		cin >> request;
    		cout << "The Machine has " << numOfTwenty << " $20's and " << numOfTen << " $10's. The withdrawl request is $" << request << "." << endl;
    		while(numOfTwenty > 0){
			while(request > 9){
    			if(request % 20 != 0){
    				request = request / 10;
    				count++;
    				returnTwenty = request / 20;
					returnTen = count;
			}
			}
			cout << "The machine will dispense " << returnTwenty << " $20's and " << returnTen << " $10.";
		}
		}
		}*/
}
