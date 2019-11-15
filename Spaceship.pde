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
    public void show ()  //Draws the floater at the current position  
    {             
    	fill(myColor);   
    	stroke(myColor);    
   		translate((float)myCenterX, (float)myCenterY);
   		float dRadians = (float)(myPointDirection*(Math.PI/180));
    	rotate(dRadians);
   		beginShape();
    	for (int nI = 0; nI < corners; nI++)
    	{
    		vertex(xCorners[nI], yCorners[nI]);
    	}
    	endShape(CLOSE);
   		rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
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
