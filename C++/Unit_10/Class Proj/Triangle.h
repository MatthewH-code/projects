//Matthew Hall
class Triangle{
	private:
		double s1;
		double s2;
		double s3;
		
	public:
		Triangle();
		Triangle(double ps1, double ps2, double ps3);
		Triangle(double ps1);
		void printTri();
		double findPerim();
		double findArea();
		void checkIso();
};
