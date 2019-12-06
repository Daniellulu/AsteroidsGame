class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid(){
  myColor = (int) (Math.random() * 200) + 50;
		rotSpeed = (int)(Math.random() * 9) -4;
		corners = 6;
		int [] xS = {-11,7,13,6,-11,-5};
      int [] yS = {-8,-8,0,10,8,0};
      xCorners = xS;
      yCorners = yS;
      myCenterX = (int) (Math.random() * 600);
      myCenterY = (int) (Math.random() * 600) ;
      myPointDirection = (double)(Math.random()* 360);
      myDirectionX = (Math.random() * 5) - 2;
      myDirectionY = (Math.random() * 5) - 2;
      
      

	}

	public void move(){
		turn(rotSpeed);
		myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
 if(myCenterX >width)
    {
      smol.remove(this);
      smol.add(new Asteroid());    
    }    
    else if (myCenterX<0)
    {
      smol.remove(this);
      smol.add(new Asteroid());     
    }    
    if(myCenterY >height)
    { 
      smol.remove(this);
      smol.add(new Asteroid());     
    } 
    
    else if (myCenterY < 0)
    { 
      smol.remove(this);
      smol.add(new Asteroid());    
    }
	}
public float getX(){
      return (float) myCenterX;
    }
    
    public float getY(){
      return (float) myCenterY;
    }
}
