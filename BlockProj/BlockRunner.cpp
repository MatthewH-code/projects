//Matthew Hall

using namespace std;
#include "Block.h"
#include <iostream>

int main()
{
	Block b1;
	Block b2(15,15);
	Block b3(12,12,11,11);
	Block b4(13,13,9,9,'Y');
	Block bArray[] = {b1,b2,b3,b4};
	for(int i = 0; i < 4;i++){
		cout << "Block " << i+1 << ":"<< endl;
		bArray[i].print();
	} 
	int index=0;
	int largeArea = 0;
	for(int i = 0; i<4;i++){
		int largeArea1 = bArray[i].areaBlock();
		if(largeArea1 > largeArea){
		largeArea = largeArea1;
		index = i;
	}
	}
	bArray[index].move(50,50);
	bArray[index].changeColor('G');
	cout << "Block " << index+1 << ":" << endl;
	bArray[index].print();
	return 0;
}
