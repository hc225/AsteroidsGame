Spaceship ship;
Asteroid rock = new Asteroid();
Star[] stars = new Star[600];
private int counter;
public void setup() 
{
	size(600,600);
	ship = new Spaceship();
	for(int i = 0; i < stars.length; i++)
		stars[i] = new Star();
}
public void draw() 
{
	background(0);
	for(int i = 0; i < stars.length; i++)
		stars[i].show();
	ship.move();
	ship.show();
	rock.move();
	rock.show();
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