//Matthew Hall
#include <iostream>
#include "ChickenFood.h"
using namespace std;

ChickenFood :: ChickenFood(){
	greaseFactor=5.0;
	crispy=true;
	sauce='Z';
}

ChickenFood :: ChickenFood(double greaseFactor1, bool crispy1, char sauce1){
	greaseFactor=greaseFactor1;
	crispy=crispy1;
	sauce=sauce1;
}

void ChickenFood :: printChicken(){
	cout << "Grease: " << greaseFactor <<endl;
	cout << "Crispy: ";
	if(crispy == true)
	cout << "True" <<endl;
	else
	cout << "False"<<endl;
	cout << "Sauce: "<< sauce <<endl;
}

ChickenFood :: tasteRating(){
	int rating=0;
	if(greaseFactor<=5)
		rating+=2;
		else
		rating-=2;
	if(crispy==true)
		rating+=2;
		else
		rating-=2;
	if(sauce=='Z')
		rating+=6;
		else if(sauce=='B')
			rating+=4;
		else if(sauce=='K')
			rating+=2;
	return rating;
}
