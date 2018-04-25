#include <iostream>
#include <string>
using namespace std;

int numKeep;
int prime(int num);


int main()
{
	if (prime(24) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else
	    cout << numKeep << " Is not Prime" << endl;
	
	if (prime(7) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else    
	    cout << numKeep << " Is not Prime" << endl;
	
	if (prime(100) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else
	    cout << numKeep << " Is not Prime" << endl;
	
	if (prime(113) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else
	    cout << numKeep << " Is not Prime" << endl;
	    
	if (prime(65535) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else    
	    cout << numKeep << " Is not Prime" << endl;
	    
	if (prime(7334) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else    
	    cout << numKeep << " Is not Prime" << endl;
	    
	if (prime(4) == 1)	
	    cout << numKeep << " Is Prime" << endl;
	else    
	    cout << numKeep << " Is not Prime" << endl;
	    
return 0;
}

int prime(int num)
{
  int i, prime = 0;
  numKeep = num;
  for(i=2;i<=num/2;i++)
  {
      if(num%i==0)
      {
          prime=1;
      }
  }
  if (prime==0)
      return 1;
  else
      return 0;
}

