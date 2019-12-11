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
		accelerate(5);
	}
	public void move()
	{
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 	
	}
	public void show()
	{
		fill(myColor);
		stroke(myColor);
		ellipse((float)myCenterX,(float)myCenterY,(float)2,(float)10);

	}
	public double getX(){return myCenterX;}
	public double getY(){return myCenterY;}

}