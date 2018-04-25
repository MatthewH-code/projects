//Matthew Hall
//Challenge: Partition
using namespace std;
#include <iostream>
#include <cstring>

void printList(int list[]);
void partitionList(int list[]);

int main(){
	int list1[] = {8,7,4,2,3,7,5,1,6};
	int list2[] = {5,4,3,5,4,3,5,4,1};
	int list3[] = {5,4,3,5,4,3,5,4,7};
	printList(list1);
	partitionList(list1);
}

void printList(int list[]){
	for(int i=0;i<9;i++){
		cout << list[i] << ", ";
	}
	cout << endl;
}

void partitionList(int list[]){
	int pivotPos = 8;
	int pivot = list[8];
	int temp = 0;
	int temp1 =0;
	int i = 0;
	bool state = true;
	while(state == true){
		if(list[i] < pivot && i > pivotPos){
			temp = list[i];
			list[i] = pivot;
			list[pivotPos] = pivot;
			pivotPos = i;
			i++; 
		}
		else if(list[i] > pivot && i < pivotPos){
			temp = list[i];
			list[i] = pivot;
			list[pivotPos] = pivot;
			pivotPos = i;
			i++;	
	}
	 state = false;
	 }
	printList(list);
}
