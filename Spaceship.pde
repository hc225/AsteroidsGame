class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 3;
    	int[] xS = {-10,16,-10,};
    	int[] yS = {-10,0,10,};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(#add8e6);
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
    public void setPointDirection(double d){myPointDirection = d;}
    public double getX(){return myCenterX;} 
    public void setX(double x){myCenterX = x;}
    public double getY(){return myCenterY;}
    public void setY(double y){myCenterY = y;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionX(double xSpeed){myDirectionX = xSpeed;}
    public double getDirectionY(){return myDirectionY;}
    public void setDirectionY(double ySpeed){myDirectionY = ySpeed;}

}
