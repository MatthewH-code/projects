#include <iostream>
#include <string>
using namespace std;

int cigarParty(int cigars, bool isWeekend);

int main()
{	
// the following code is the test cases and should not be altered	
	cout << cigarParty(30, 0) << " - 0" << endl;
	cout << cigarParty(50, 0) << " - 1" << endl;
	cout << cigarParty(70, 1) << " - 1" << endl;
	cout << cigarParty(30, 1) << " - 0" << endl;
	cout << cigarParty(50, 1) << " - 1" << endl;
	cout << cigarParty(60, 0) << " - 1" << endl;
	cout << cigarParty(61, 0) << " - 0" << endl;
	cout << cigarParty(40, 0) << " - 1" << endl;
	cout << cigarParty(39, 0) << " - 0" << endl;
	cout << cigarParty(40, 1) << " - 1" << endl;
	cout << cigarParty(39, 1) << " - 0" << endl;

	return 0;
}

int cigarParty(int cigars, bool isWeekend)
{
	// Write you solution to the lab here
	if(cigars >= 40 && cigars <= 60)
		return 1;
		else
		{
			if(cigars >=40 && isWeekend == 1)
			return 1;
		}
		return 0;
}


 
