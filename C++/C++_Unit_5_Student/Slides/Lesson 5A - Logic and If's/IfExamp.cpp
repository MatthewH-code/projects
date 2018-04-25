#include <iostream>
#include <string>
using namespace std;

int main()
{
	int num;
    
    cout << "Enter an integer from 36-78"<<endl;
    cin >> num;
    
    if(num<36)
    {
    	cout<<"the number you entered was too small"<<endl;
	}
	
	if(num>78)
	{
		cout<<"the number you entered was too big"<<endl;
	}
	
	
	
	
	return 0;
}
