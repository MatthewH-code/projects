//Matthew Hall
using namespace std;
#include <iostream>
#include <cstring>

int smallest(int list[],int size);
int orderList(int list[],int smallest, int size);
void printList(int list[], int size);

int main(){
	int list[11] = {8,17,23,43,51};
	int addList[] = {5,22,68,44,12};
	int temp = 0;
	int temp1 = 0;
	int temp2 = 0;
	printList(list,9);
	for(int i=5;i<11;i++){
		for(int x=0;x<i;x++){
			temp = smallest(list,11);
			temp1 = smallest(addList,5);
			addList[x] = 100;
			if(temp1 < temp){
				list[x] = temp2;
				list[x] = temp1;
				list[x+1] = temp2;
			}
				else{
				list[x+1] = temp2;
				list[x+1] = temp1;
				list[x+2] = temp2;
		}
	}
	printList(list,9);
}
}

int smallest(int list[], int size){
	int x = list[0]; 
	for(int i = 0;i<size;i++){
		if(list[i] < x)
		x=list[i];
	}
	return x;
}

int orderList(int list[],int smallest,int size){
	
}

void printList(int list[], int size){
	for(int i = 0;i<size;i++)
		cout << list[i] << ", ";
		cout << list[10] << endl;
}
