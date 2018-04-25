//Matthew Hall
class Block{
	private:
		int x;
		int y;
		int height;
		int width;
		char color;
	
	public:
		Block();
		Block(int x1, int y1);
		Block(int x1, int y1, int height1, int width1);
		Block(int x1, int y1, int height1, int width1, char color1);
		void print();
		void move(int x1, int y1);
		void changeColor(char color1);
		int areaBlock();
};
