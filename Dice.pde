void setup()
{
	noLoop();
	size(500,500);
}
int colorG = 255;
int colorB = 255;

void draw()
{
	color gradient = color(100, colorG, colorB);
	background(0);
	for(int x = 50; x < 450; x = x + 50)
	{
		for (int y = 50; y < 450; y = y + 50)
		{
			for (int z = 10; z < 255; z = z + 10)
			{
				for (int ab = 10; ab < 255; ab = ab + 10)
	Die numberOne = new Die(x, y, z, ab);
	numberOne.show();
}
}
}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int size, dx, dy, colorG, colorB;
	color gradient;
	double randomNum = Math.random();
	
	Die(int x, int y, int z, int ab) //constructor
	{
		size = 50;
		dx = x;
		dy = y;
		colorG = z;
		colorB = ab;
		gradient = color(100, colorG, colorB);

	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(gradient);
		rect(dx, dy, size, size, 8);

		if (randomNum < 1.0/6)
		{
			fill(0);
			ellipse(dx +25, dy+25, 8, 8);
		}
		if ((1.0/6) < randomNum && randomNum < (2.0/6))

		{
			fill(0);
			ellipse(dx + 15, dy + 25, 8, 8);
			ellipse(dx + 35, dy + 25, 8, 8);
		}
		if ((2.0/6) < randomNum && randomNum < (3.0/6))
		{
			fill(0);
			ellipse(dx + 25, dy+ 25, 8, 8);
			ellipse(dx + 15, dy+ 15, 8, 8);
			ellipse(dx + 35, dy+ 35, 8, 8);
		}
		if ((3.0/6) < randomNum && randomNum < (4.0/6))
		{
			fill(0);
			ellipse(dx + 15, dy+ 15, 8, 8);
			ellipse(dx + 35, dy+ 15, 8, 8);
			ellipse(dx + 15, dy+ 35, 8, 8);
			ellipse(dx + 35, dy+ 35, 8, 8);
		}
		if ((4.0/6) < randomNum && randomNum < (5.0/6))
		{
			fill(0);
			ellipse(dx + 15, dy+ 15, 8, 8);
			ellipse(dx + 35, dy+ 15, 8, 8);
			ellipse(dx + 15, dy+ 35, 8, 8);
			ellipse(dx + 35, dy+ 35, 8, 8);
			ellipse(dx + 25, dy+ 25, 8, 8);
		}
		if (randomNum > (5.0/6))
		{
			fill(0);
			ellipse(dx + 15 -3, dy+ 15, 8, 8);
			ellipse(dx + 25, dy+ 15, 8, 8);
			ellipse(dx + 15 -3, dy+ 35, 8, 8);
			ellipse(dx + 35+3, dy+ 35, 8, 8);
			ellipse(dx + 25, dy+ 35, 8, 8);
			ellipse(dx + 35+3, dy+ 15, 8, 8);


		}

	}
}
