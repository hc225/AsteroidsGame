Spaceship ship;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Star[] stars = new Star[600];
boolean kUp, kLeft, kRight, kShoot;
public void setup() 
{
	kUp = false;
	kLeft = false;
	kRight = false;
	kShoot = false;
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
	for(int i = 0; i < shots.size(); i++)
	{
		shots.get(i).move();
		shots.get(i).show();
	}
    keyCheck();
}
public void keyCheck()
{
	if(kUp == true)
		ship.accelerate(0.05);
	if(kLeft == true)
		ship.turn(-4);
	if(kRight == true)
		ship.turn(4);
	if(kShoot == true)
		shots.add(new Bullet(ship));
}
public void keyPressed()
{
	if(keyCode == UP)
		kUp = true;
	if(keyCode == LEFT)
		kLeft = true;
	if(keyCode == RIGHT)
		kRight = true;
	if(keyCode == 32)
		kShoot = true;
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
	if(keyCode == 32)
		kShoot = false;
}