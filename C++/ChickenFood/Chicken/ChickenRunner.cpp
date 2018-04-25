//Matthew Hall
#include<iostream>
using namespace std;
#include "ChickenFood.h"

int main(){
	ChickenFood tender1;
	tender1.printChicken();
	cout << endl << "The taste rating of the chicken is " << tender1.tasteRating() << endl;
	ChickenFood tender2(7.2, false, 'B');
	tender2.printChicken();
	cout << endl << "The taste rating of the chicken is " << tender2.tasteRating() << endl;
	return 0;
}
