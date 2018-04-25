//Matthew Hall
using namespace std;

//Setup class(like struct)
class ChickenFood{
	private:
		//Instance variables
		double greaseFactor;
		bool crispy;
		char sauce;
		
		
	public:
		ChickenFood(); //Default contructor
		ChickenFood(double greaseFactor1, bool crispy1, char sauce1);
		
		int tasteRating();
		void printChicken();
		
	
		
		
};
