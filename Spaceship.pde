class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 4;
    	int[] xS = {-10,8,-10,-4};
    	int[] yS = {-10,0,10,0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(0,0,255);
    	myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 270;
    }
    public void Hyperspace()
    {
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = Math.random()*360;
    	myCenterX = Math.random()*580;
    	myCenterY = Math.random()*580;
    }
    public double getPointDirection(){return myPointDirection;}
    public void setX(double x){myCenterX = x;}
    public double getX(){return myCenterX;}
    public void setY(double y){myCenterY = y;}
    public double getY(){return myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
}
