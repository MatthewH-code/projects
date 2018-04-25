#include <iostream>
#include <string>
#include <cmath>
#include <cstdlib>
using namespace std;

int main()
{
	int ray1[4];
	
	int ray2[4] = {6, 17, 12, 22};
	
	int ray3[4];
	ray3[0] = 4;
	ray3[1] = 6;
	ray3[2] = 8;
	ray3[3] = 10;
	
	int ray4[4];
	for(int i = 0; i < 4; i++)
	   ray4[i] = (rand()%10+1)*3+1;
	
	for(int i = 0; i<4; i++)     // prints out the first array we made
	   cout << ray1[i]<< endl;
	cout << "\n" << endl;
	
	for(int i = 0; i<4; i++)     // prints out the second array we made
	   cout << ray2[i]<< endl;
	cout << "\n" << endl;
	
	for(int i = 0; i<4; i++)     // prints out the third array we made
	   cout << ray3[i]<< endl;
	cout << "\n" << endl;
	
	for(int i = 0; i<4; i++)     // prints out the fourth array we made
	   cout << ray4[i]<< endl;
	   
	
	return 0;
}
