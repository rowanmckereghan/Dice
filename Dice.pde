void setup()
{
	noLoop();
	size(500,500);

}

int colorG = 255;
int colorB = 255;
int sum = 0;
void draw()
{
	background(0);
	for(int x = 50; x < 450; x = x + 50)
	{
		for (int y = 50; y < 450; y = y + 50)
		{
	Die numberOne = new Die(x, y, (int)(Math.random()*256), colorG, colorB); //(int)(Math.random()*256), (int)(Math.random()*256));
	numberOne.show();
	colorG = colorG - ((int)(Math.random()*6));
	colorG = colorG - ((int)(Math.random()*6));
	sum = sum + numberOne.count;
}
}
fill(255);

text("Dice Sum: " + sum, 210, 475);
sum = 0;
}
void mousePressed()
{
	redraw();
	colorG = 255;
	colorB =255;
}
class Die //models one single dice cube
{
	int size, dx, dy, colorG, colorB, count;
	color gradient;
	double randomNum = Math.random();
	
	Die(int x, int y, int cd, int z, int ab) //constructor
	{
		size = 50;
		dx = x;
		dy = y;
		gradient = color(cd, z, ab);
		count = 0;

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
			count = 1;
		}
		if ((1.0/6) < randomNum && randomNum < (2.0/6))

		{
			fill(0);
			ellipse(dx + 15, dy + 25, 8, 8);
			ellipse(dx + 35, dy + 25, 8, 8);
			count = 2;
		}
		if ((2.0/6) < randomNum && randomNum < (3.0/6))
		{
			fill(0);
			ellipse(dx + 25, dy+ 25, 8, 8);
			ellipse(dx + 15, dy+ 15, 8, 8);
			ellipse(dx + 35, dy+ 35, 8, 8);
			count = 3;
		}
		if ((3.0/6) < randomNum && randomNum < (4.0/6))
		{
			fill(0);
			ellipse(dx + 15, dy+ 15, 8, 8);
			ellipse(dx + 35, dy+ 15, 8, 8);
			ellipse(dx + 15, dy+ 35, 8, 8);
			ellipse(dx + 35, dy+ 35, 8, 8);
			count = 4;
		}
		if ((4.0/6) < randomNum && randomNum < (5.0/6))
		{
			fill(0);
			ellipse(dx + 15, dy+ 15, 8, 8);
			ellipse(dx + 35, dy+ 15, 8, 8);
			ellipse(dx + 15, dy+ 35, 8, 8);
			ellipse(dx + 35, dy+ 35, 8, 8);
			ellipse(dx + 25, dy+ 25, 8, 8);
			count  = 5; 
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
			count = 6;


		}

	}
}
