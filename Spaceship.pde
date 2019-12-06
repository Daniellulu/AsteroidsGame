class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      int [] xS = {-8,16,-8,-2};
      int [] yS = {-8,0,8,0};
      xCorners = xS;
      yCorners = yS;
      myColor = (255);
      myCenterX = myCenterY = 350;
    }
    public void hyperspace(){
      myCenterX = (int)(Math.random()* 690);
      myCenterY = (int)(Math.random()* 690);
      myPointDirection = (double)(Math.random()* 360);
      myDirectionX = myDirectionY = 0;
    }
    public float getX(){
      return (float) myCenterX;
    }
    
    public float getY(){
      return (float) myCenterY;
    }

 public float getdX(){
      return (float) myDirectionX;
    }
    
    public float getdY(){
      return (float) myDirectionY;
    }
    
    public float getp(){
      return (float) myPointDirection;
    }
}
