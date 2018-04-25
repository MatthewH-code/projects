#include <iostream>
#include <string>
#include <cmath>
#include <cstdlib>
using namespace std;

void arrayPrint(int ray[], int size);
int valCount(int ray[], int size, int val);


int main()
{
	//create the Array
	int smallArr[] = {7, 4, 3, 0, 1, 7, 6, 5, 3, 2, 9, 3};
	//print out the array 
	arrayPrint(smallArr, 12);
	cout << "The number of 3's in the above array is: ";
	cout << valCount(smallArr, 12, 3) <<endl;
	
	cout << "\n" << endl;
	//create the 2nd Array
	int largeArr[] = {7, 4, 2, 7, 3, 4, 6, 7, 8, 9, 7, 1, 7, 6, 5, 7, 3, 2, 7, 9, 9, 8, 7};
	//print out the array 
	arrayPrint(largeArr, 23);
	cout << "The number of 7's in the above array is: ";
	cout << valCount(largeArr, 23, 7) <<endl;
	//make a call to valCount using appropriate parameters
	
	
	return 0;
}

int valCount(int ray[], int size, int val)
{
	int count = 0;
	for(int i =0; i < size; i++)
	{
		if(ray[i]==val)
		count++;
	}
	return count;
}

void arrayPrint(int ray[], int size)
{
	cout << "{";
	for(int i = 0; i<size-1; i++)
	   cout << ray[i] << ", ";
	cout << ray[size-1] << "}" << endl;
}
