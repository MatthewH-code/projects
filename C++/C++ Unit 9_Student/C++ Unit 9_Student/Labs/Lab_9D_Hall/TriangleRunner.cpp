#include <iostream>
using namespace std;
#include <cmath>
#include "Tri.h"

void triangleArrayPrint(Tri tArray[]);
void isoscelesTriangle(Tri tArray[]);
void equilateralTriangle(Tri tArray[]);
void changeSide(Tri tArray[]);
void areaTriangle(Tri tArray[]);
void perimeterTriangle(Tri tArray[]);

int main()
{
	Tri t1 = {3, 6, 6};
	Tri t2 = {4, 9, 11};
	Tri t3 = {5,1.1,5.2};
	Tri t4 = {2.7,4.2,2.7};
	Tri t5 = {8,5,8};
	Tri t6 = {11,11,11};
	Tri t7 = {3.21,3,3.7};
	Tri t8 = {9.3,5,8.9};
	Tri t9 = {8.2,9,15};
	Tri t10 = {4.1,11,8};
	Tri t11 = {17,12,21};
	Tri t12 = {6,18,17};
	Tri t13 = {22,12.3,21};
	Tri t14 = {3.18,32,33.2};
	Tri t15 = {3.14,1.51,3};
	Tri tArray[15] = {t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15};
	cout << "Original Triangles" << endl;
	triangleArrayPrint(tArray);
	cout << endl;
	changeSide(tArray);
	cout << "Triangles after Changing Triangle 4" << endl;
	triangleArrayPrint(tArray);
	cout << endl;
	isoscelesTriangle(tArray);
	cout << endl;
	equilateralTriangle(tArray);
	cout << endl << "All triangles area \n"; 
	areaTriangle(tArray);
	cout << endl << "The perimter for triangle 1 and 2" <<endl;
	perimeterTriangle(tArray);
}

void triangleArrayPrint(Tri tArray[]){
	for(int i = 0;i<15;i++){
		cout << "T" << i + 1 << " = side " << tArray[i].one << ", side " << tArray[i].two << ", side " << tArray[i].three << endl;  
	}
}

void isoscelesTriangle(Tri tArray[]){
	for(int i = 0;i<15;i++){
	if(tArray[i].one==tArray[i].two || tArray[i].one==tArray[i].three || tArray[i].two==tArray[i].three)
	cout << "T" << i+1 << " Is an isosceles triangle \n";
	else
	cout << "T" << i+1 << " Is not an isosceles triangle \n";
}
}

void equilateralTriangle(Tri tArray[])
{
	for(int i = 0;i<15;i++){
	if(tArray[i].one == tArray[i].two && tArray[i].two == tArray[i].three)
	cout << "T" << i+1 << " Is an equilateral triangle \n";
	else
	cout << "T" << i+1 << " Is not an equilateral triangle \n";
}
}	

void changeSide(Tri tArray[])
{
	tArray[3].one += 2;
	tArray[3].three += 3;
}

void areaTriangle(Tri tArray[])
{
	for(int i = 0; i<15;i++){
	double theArea = 0.0;
	double s = 0.0;
	s = (tArray[i].one+tArray[i].two+tArray[i].three) / 2;
	theArea = sqrt(s * (s-tArray[i].one) * (s-tArray[i].two) * (s-tArray[i].three) );
	cout << "T" << i+1 << " area = " << theArea << endl;
}
}

void perimeterTriangle(Tri tArray[])
{
	for(int i=0;i<2;i++)
	{
		double perimeter =0;
		perimeter = tArray[i].one + tArray[i].two + tArray[i].three;
		cout << "T" << i+1 << " Perimeter = ";
		cout << perimeter << endl;
	}
}
