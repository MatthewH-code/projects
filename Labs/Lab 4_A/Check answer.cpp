#include <iostream>
#include <string>
#include <limits>

using namespace std;


int getInt()
	{
	int x=0;
	while (!(cin >> x))
		{
		cin.clear();
		cin.ignore(numeric_limits<streamsize>::max(),'\n');
		cout << "Please input a proper 'whole' number: " << endl;
		}
	return (x);
	}

int toobig()
{
cout << "Your number must be between 0 and 40." << endl;
main();
return (x);
}

int toosmall()
{
cout << "Your number must be between 0 and 40." << endl;
main();
return (x);
}

	
int main ()
	{

	cout << "your number please:-" << endl;
	int x = getInt();

		if (x>40)
		{
		toobig();
		}
		else if (x<0)
		{
		toosmall();
		}
		
	
	cout << endl << "All done! Nice!!" << endl;
	
	return 0;
	}
