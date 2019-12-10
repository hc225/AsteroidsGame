class Bullet extends Floater
{
	private double dRadians;
	public Bullet(Spaceship theShip)
	{
		myCenterX = ship.getX();
		myCenterY = ship.getY();
		myPointDirection = ship.getPointDirection();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + ship.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + ship.getDirectionY();
		myColor = color(255,0,0);
	}
	public void show()
	{
		fill(myColor);
		stroke(myColor);
		ellipse((float)myCenterX,(float)myCenterY,(float)4,(float)4);
	}
}