//Matthew Hall

using namespace std;
#include <iostream>
#include "Ship.h"

Ship :: Ship(){
	longitude = 26;
	latitude = -97;
	sr =3;
	wr=3;
	fr=100;
	cef=0;
	crr=0;
}

Ship :: Ship(int sr1, int wr1, int cef1){
	longitude = 26;
	latitude = -97;
	sr =sr1;
	wr=wr1;
	fr=100;
	cef=cef1;
	crr=0;
}

void Ship :: setCombatReadinessRating(){
	crr = (sr*wr)+cef;
}
		
		
void move(double long1, double lat1){
}



void Ship :: printShip(){
	cout << "Longitude" << longitude << endl;
	cout << "Latitude" << latitude << endl;
	cout << "Size" << sr << endl;
	cout << "Weapons" << wr << endl;
	cout << "Fuel" << fr << endl;
	cout << "Crew" << cef << endl;
	cout << "Combat Readiness" << crr << "\n" << endl;
}



int Ship :: combatReadinessRating(){
	return crr;
}	
