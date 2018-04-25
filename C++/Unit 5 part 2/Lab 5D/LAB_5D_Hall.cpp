#include <iostream>
#include <string>
using namespace std;


int main()
{	
    double grade;
    cout << "Enter your grade (0-100)" << endl;
    cin >> grade;
    if(grade < 0 || grade > 100)
    cout << "Invald input(Must be between 0-100)" << endl;
    else{
	
		if(grade >= 89.5 && grade <= 100)
    	cout << grade << " Is an A" << endl;
    		else{
    			if(grade >= 79.5 && grade <= 89.4)
    			cout << grade << " Is a B" << endl;
    				else{
    					if(grade >= 69.5 && grade <= 79.4)
    					cout << grade << "Is a C" << endl;
    						else{
    							if(grade >=59.5 && grade <= 69.4)
    								cout << grade << " Is a D" << endl;
    									else{
    										cout << grade << " Is a F" << endl;
				}
			}
		}
	}
}
    
	return 0;
}



 
