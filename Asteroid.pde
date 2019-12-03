class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid(){
  myColor = 255;
		rotSpeed = (int)(Math.random() * 9) -4;
		corners = 6;
		int [] xS = {-11,7,13,6,-11,-5};
      int [] yS = {-8,-8,0,10,8,0};
      xCorners = xS;
      yCorners = yS;
      myCenterX = myCenterY = (int) (Math.random() * 300) +100;
      myPointDirection = (double)(Math.random()* 360);
      myDirectionX = (Math.random() * 5) - 2;
      myDirectionY = (Math.random() * 5) - 2;
      
      

	}

	public void move(){
		turn(rotSpeed);
		super.move();
	}
public float getX(){
      return (float) myCenterX;
    }
    
    public float getY(){
      return (float) myCenterY;
    }
}
