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
    	myColor = color(#964B00);
    	myCenterX = Math.random()*600+10;
    	myCenterY = Math.random()*600+10;
    	myDirectionX = 0;
    	myDirectionY = 0;        
    	myPointDirection = Math.random()*360;
    	accelerate(Math.random()*3+1);

	}

	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}
	public int getRotSpeed(){return rotationSpeed;}
	public void setRotSpeed(int s){rotationSpeed = s;}
	public double getX(){return myCenterX;}
	public void setX(double x){myCenterX = x;}
	public double getY(){return myCenterY;}
	public void setY(double y){myCenterY = y;}
	public void setPointDirection(double d){myPointDirection = d;}
	public void setDirectionX(double xSpeed){myDirectionX = xSpeed;}
    public void setDirectionY(double ySpeed){myDirectionY = ySpeed;}
}