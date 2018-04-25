//Matthew Hall

using namespace std;

class Ship{
	private:
		double longitude;
		double latitude;
		int sr;
		int wr;
		int fr;
		int cef;
		int crr;
	public:
		Ship();
		Ship(int sr1, int wr1, int cef1);
		void setCombatReadinessRating();
		void move(double long1, double lat1);
		void printShip();
		int combatReadinessRating();	
};
