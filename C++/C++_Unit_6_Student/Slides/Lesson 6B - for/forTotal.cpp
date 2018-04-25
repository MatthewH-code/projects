#include <iostream>
#include <string>
using namespace std;

int main()
{
		int total = 0;
		for(int run=1; run<=5; run++)  //change the 5 stop value and rerun
		{
			total=total+run;
		}
		cout << total << endl;

	return 0;
}
