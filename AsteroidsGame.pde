Spaceship ship;
Star[] stars = new Star[300];
public void setup() 
{
	size(600,600);
	ship = new Spaceship();
	for(int i - 0; i < stars.length; i++)
		stars[i] = new Star();
}
public void draw() 
{
	background(0);
	ship.move();
	ship.show();
}
public void keyPressed()
{
	if(key == 'w')
		ship.accelerate(1);
	if(key == 'a')
		ship.turn(-10);
	if(key == 's')
		ship.accelerate(-1);
	if(key == 'd')
		ship.turn(10);
	if(key == 'h')
		ship.Hyperspace();

}
