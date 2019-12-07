Spaceship ship;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] stars = new Star[600];
boolean kUp, kLeft, kRight;
public void setup() 
{
	kUp = false;
	kLeft = false;
	kRight = false;
	size(600,600);
	ship = new Spaceship();
	for(int i = 0; i < stars.length; i++)
		stars[i] = new Star();
	for(int i = 0; i < 15; i++)
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
		if(dist((float)rocks.get(i).getX(),(float)rocks.get(i).getY(),(float)ship.getX(),(float)ship.getY()) <= 20)
			rocks.remove(i);
	}
    //spaceship moves while key is held	
	if(kUp == true)
		ship.accelerate(0.5);
	if(kLeft == true)
		ship.turn(-3);
	if(kRight == true)
		ship.turn(3);
}
public void keyPressed()
{
	if(keyCode == UP)
		kUp = true;
	if(keyCode == LEFT)
		kLeft = true;
	if(keyCode == RIGHT)
		kRight = true;
	if(key == 'h')
		ship.Hyperspace();
}
public void keyReleased()
{
	if(keyCode == UP)
		kUp = false;
	if(keyCode == LEFT)
		kLeft = false;
	if(keyCode == RIGHT)
		kRight = false;
}