class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      int [] xS = {-8,16,-8,-2};
      int [] yS = {-8,0,8,0};
      xCorners = xS;
      yCorners = yS;
      myColor = (255);
      myCenterX = myCenterY = 250;
    }
    public void hyperspace(){
      myCenterX = (int)(Math.random()* 490);
      myCenterY = (int)(Math.random()* 490);
      myPointDirection = (int)(Math.random()* 360);
      myDirectionX = myDirectionY = 0;
    }

}
