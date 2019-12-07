class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		rotationSpeed = (int)(Math.random()*15)-7;
		corners = 9;
		int[] xS = {-9,-1,7,10,13,8,-7,-10,-12};
    	int[] yS = {-7,-10,-8,-4,0,10,13,8,0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(255,0,0);
    	myCenterX = Math.random()*600+10;
    	myCenterY = Math.random()*600+10;
    	myDirectionX = 0;
    	myDirectionY = 0;        
    	myPointDirection = Math.random()*360;
    	accelerate(Math.random()*2+1);

	}

	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}
	public void setRotSpeed(int n){rotationSpeed = n;}
	public int getRotSpeed(){return rotationSpeed;}
	public void setX(double x){myCenterX = x;}
	public double getX(){return myCenterX;}
	public void setY(double y){myCenterY = y;}
	public double getY(){return myCenterY;}

}