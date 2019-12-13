Spaceship ship;
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
Star[] stars = new Star[600];
boolean kUp, kLeft, kRight, kShoot, alive;
public void setup() 
{
	kUp = false;
	kLeft = false;
	kRight = false;
	kShoot = false;
	alive = true;
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
	}
	for(int i = 0; i < shots.size(); i++)
	{
		shots.get(i).move();
		shots.get(i).show();
	}
	collisionCheck();
    keyCheck();
}
public void collisionCheck()
{
	for(int i = 0; i < rocks.size(); i++)	
		if(dist((float)rocks.get(i).getX(),(float)rocks.get(i).getY(),(float)ship.getX(),(float)ship.getY()) <= 20)
		{
			rocks.remove(i);
			gameReset();		
		}
	for(int i = 0; i < shots.size(); i++)
	{
		for(int n = 0; n < rocks.size(); n++)
			if(dist((float)rocks.get(n).getX(),(float)rocks.get(n).getY(),(float)shots.get(i).getX(),(float)shots.get(i).getY()) <= 20)
			{
				rocks.remove(n);
				shots.remove(i);
			}

	}
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
	if(keyCode == ENTER && alive == false)
	{
		alive = true;
		loop();
	}
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
public void gameReset()
{
	alive = false;
	noLoop();	
	textSize(32);
	fill(255,0,0);
	text("Game Over",300-96,300);
	ship.setX(300);
	ship.setY(300);
	ship.setPointDirection(270);
	ship.setDirectionX(0);
	ship.setDirectionY(0);
	for(int i = 0; i < rocks.size(); i++)
	{
		rocks.get(i).setX(Math.random()*600+10);
		rocks.get(i).setY(Math.random()*600+10);
		rocks.get(i).setPointDirection(Math.random()*360);
		rocks.get(i).setRotSpeed((int)(Math.random()*15)-7);
		rocks.get(i).accelerate(Math.random()*3+1);
		rocks.get(i).setDirectionX(0);
		rocks.get(i).setDirectionY(0);
		rocks.get(i).accelerate(Math.random()*3+1);
	}
	for(int i = rocks.size(); i < 15; i++ )
		rocks.add(new Asteroid());
	for(int i = 0; i < shots.size(); i++)
	{
		shots.remove(i);
		i--;
	}	
}
