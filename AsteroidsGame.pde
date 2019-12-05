Spaceship ship;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] stars = new Star[600];
float d = dist(rocks.get(i).getCenterX(),rocks.get(i).getCenterY(),ship.getCenterX(),ship.getCenterY()
private int counter;
public void setup() 
{
	size(600,600);
	ship = new Spaceship();
	for(int i = 0; i < stars.length; i++)
		stars[i] = new Star();
	for(int i = 0; i < 7; i++)
		rocks.add(new Asteroid());
}
public void draw() 
{
	background(0);
	for(int i = 0; i < stars.length; i++)
		stars[i].show();
	ship.move();
	ship.show();
	for(int i = 0; i < 7; i++)
	{
		rocks.get(i).move();
		rocks.get(i).show();
	}
	for(int i = 0; i < 7; i++)
		if(d <= 13)
		{
			rocks.remove(i);
			i--;
		}


}
public void keyPressed()
{
	if(keyCode == UP)
		ship.accelerate(0.2);
	if(keyCode == LEFT)
		ship.turn(-15);
	if(keyCode == RIGHT)
		ship.turn(15);
	if(key == 'h')
		ship.Hyperspace();
}
//public void keyReleased(){}