class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		rotationSpeed = (int)(Math.random()*17)-8;
		corners = 9;
		int[] xS = {-9,-1,7,10,13,8,-7,-10,-12};
    	int[] yS = {-7,-10,-8,-4,0,10,13,8,0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(255,0,0);
    	myCenterX = Math.random()*600;
    	myCenterY = Math.random()*600;
    	myDirectionX = (Math.random()*4+1) * (Math.cos(myPointDirection*(Math.PI/180)));
    	myDirectionY = (Math.random()*4+1) * (Math.sin(myPointDirection*(Math.PI/180)));        
    	myPointDirection = Math.random()*360;
	}

	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}
	public void setRotSpeed(int n){rotationSpeed = n;}
	public int getRotSpeed(){return rotationSpeed;}
	


}