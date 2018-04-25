#include <iostream>
using namespace std;
#include "Card.h"

void printCard(Card card);
void printDeck(Card deck[], int size);
void changeCard(Card &card3);
void pointTotal(Card deck[], int size);

int main(){
	Card card1={'B',5};
	Card card2={'G',7};
	Card card3={'Y',4};
	printCard(card1);
	int size = 3;
	Card cardDeck[] = {card1, card2, card3};
	printDeck(cardDeck, size);
	pointTotal(cardDeck, size);
	changeCard(card3);
	cardDeck[2] = card3;
	printDeck(cardDeck, size);
	pointTotal(cardDeck, size);
}

void printCard(Card card){
	cout << "Color = " << card.color << " Value = " << card.value << endl;
}
void printDeck(Card deck[], int size)
{
	for(int i = 0; i < size; i++)
	{
		cout << "Card " << i + 1 << " ";
		printCard(deck[i]);	
	} 
}
void changeCard(Card &card3)
{
	card3.value = card3.value - 6;
}
void pointTotal(Card deck[], int size)
{
	Card total = {'B', 0};
	for(int i = 0; i < size; i++)
	{
		total.value = total.value + deck[i].value;
	}
	cout << "The total value is: " << total.value << endl << endl;
}
