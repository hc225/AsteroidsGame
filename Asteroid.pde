class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		rotationSpeed = (int)(Math.random()*40)-20;
		corners = 6;
		int[] xS = {-11,7,13,6,-11,-5};
    	int[] yS = {-8,-8,0,10,8,0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(255,0,0);
    	myCenterX = (int)(Math.random()*1200)-600;
    	myCenterY = (int)(Math.random()*1200)-600;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
	}
//	public int getRotSpeed(int n){return rotationSpeed();}
	//public setRotSpeed(int n){rotationSpeed = n;}

	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}
}