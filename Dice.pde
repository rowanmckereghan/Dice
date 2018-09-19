void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(0);
	Die numberOne = new Die(50, 50);
	numberOne.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int size, dx, dy;
	
	Die(int x, int y) //constructor
	{
		size = 50;
		dx = x;
		dy = y;

	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(dx, dy, size, size, 8);
	}
}
