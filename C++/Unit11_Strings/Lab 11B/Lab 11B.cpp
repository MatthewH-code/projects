//Matthew Hall

using namespace std;
#include <iostream>

void printList(int list[]);
int smallest(int list[]);

int main()
{
	int list1[] = {3,11,17,2,22,5,8,1,50};
	int list2[] = {16,11,22,2,17,81,19,32,9};
	int list3[] = {6,18,33,11,21,6,4,9,3};
	int list4[] = {4,11,54,66,28,41,72,48,27};
	
	cout << "List 1 is : ";
	printList(list1);
	cout << "\nThe smallest number in List 1 is "<< smallest(list1) << ".\n" <<endl;
	
	cout << "List 2 is : ";
	printList(list2);
	cout << "\nThe smallest number in List 2 is "<< smallest(list2) << ".\n" <<endl;
	
	cout << "List 3 is : ";
	printList(list3);
	cout << "\nThe smallest number in List 3 is "<< smallest(list3) << ".\n" <<endl;
	
	cout << "List 4 is : ";
	printList(list4);
	cout << "\nThe smallest number in List 4 is "<< smallest(list4) << ".\n" <<endl;
	
	return 0;
}

void printList(int list[])
{
	for(int i = 0; i<8; i++)
		cout << list[i] << ", ";
	cout << list[8] << endl;
}

int smallest(int list[]){
	int x = list[0]; 
	for(int i = 0;i<9;i++){
		if(list[i] < x)
		x=list[i];
	}
	return x;
}
