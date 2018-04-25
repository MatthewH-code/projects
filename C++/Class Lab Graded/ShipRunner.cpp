//Matthew Hall

using namespace std;
#include <iostream>
#include "Ship.h"

int main()
{
	Ship s1;
	s1.setCombatReadinessRating();
	s1.printShip();
	Ship s2(4,4,1);
	s2.setCombatReadinessRating();
	s2.printShip();
	cout << "CRR: " << s2.combatReadinessRating();
	return 0;
}
