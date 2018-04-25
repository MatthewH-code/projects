//Matthew Hall

using namespace std;
#include "Block.h"
#include <iostream>

Block :: Block(){
	x = 10;
	y = 10;
	height = 10;
	width = 10;
	color = 'B';
}

Block :: Block(int x1, int y1){
	x = x1;
	y = y1;
	height = 10;
	width = 10;
	color = 'B';
}
Block :: Block(int x1, int y1, int height1, int width1){
	x = x1;
	y = y1;
	height = height1;
	width = width1;
	color = 'B';
}
Block :: Block(int x1, int y1, int height1, int width1, char color1){
	x = x1;
	y = y1;
	height = height1;
	width = width1;
	color = color1;
}

void Block :: print(){
	cout << "Location: (" << x << "," << y << ")" << endl;
	cout << "Height: " << height << endl;
	cout << "Width: " << width << endl;
	cout << "Color: " << color << "\n" << endl;
}
void Block :: move(int x1, int y1){
	x = x1;
	y = y1;
}
void Block :: changeColor(char color1){
	color = color1;
}
int Block :: areaBlock(){
	return width * height;	
}
