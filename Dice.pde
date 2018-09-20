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
	double randomNum = Math.random();
	
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

		if (randomNum < 1.0/6)
		{
			fill(0);
			ellipse(dx +25, dy+25, 8, 8);
		}
		if ((1.0/6) < randomNum && randomNum < (2.0/6))

		{
			fill(0);
			ellipse(dx +12.5, dy+25, 8, 8);
			ellipse(dx +37.5, dy+25, 8, 8);
		}
		if (2.0/6 < Math.random() < 3.0/6)
		{
			fill(0);
			ellipse(dx +25, dy+25, 8, 8);
			ellipse(dx +12.5, dy+12.5, 8, 8);
			ellipse(dx +37.5, dy+37.5, 8, 8);
		}

	}
}
