#include <iostream>
#include <string>
using namespace std;

int main()
{
     int num=7;
	 if(num>2) 
     {
        if(num<10)
           cout << ">2<10" << endl;     // you can put a single line 
        if(num>10)                      // of code under an if and it
           cout << ">2>10" << endl;     // treats that one line like it is in {}
     }

	
	
	return 0;
}
