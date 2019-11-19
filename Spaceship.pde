class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 4;
    	int[] xS = {-8,16,-8,-2};
    	int[] yS = {-8,0,8,0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(#5525E8);
    	myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
    public void Hyperspace()
    {
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = Math.random()*360;
    	myCenterX = Math.random()*580;
    	myCenterY = Math.random()*580;
    }
}
