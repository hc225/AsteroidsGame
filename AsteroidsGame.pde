Spaceship ship;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] stars = new Star[600];
boolean keyUp, keyLeft, keyRight;
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
	for(int i = 0; i < rocks.size(); i++)
	{
		rocks.get(i).move();
		rocks.get(i).show();
		if(dist((float)rocks.get(i).getX(),(float)rocks.get(i).getY(),(float)ship.getX(),(float)ship.getY()) <= 13)
		{
			rocks.remove(i);
			i--;
		}		
	}
	
}
public void keyPressed()
{
	if(keyCode == UP)
		keyUp = true;
		ship.accelerate(0.2);
	if(keyCode == LEFT)
		keyLeft = true;
		ship.turn(-15);
	if(keyCode == RIGHT)
		keyRight = true;
		ship.turn(15);
	if(key == 'h')
		ship.Hyperspace();
}
public void keyReleased()
{
	if(keyCode == UP)
		keyUp = false;
	if(keyCode == LEFT)
		keyLeft = false;
	if(keyCode == RIGHT)
		keyRight = false;
}