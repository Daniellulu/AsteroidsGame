class Bullet extends Floater
{
  public Bullet(){
   int [] xS = {-8,16,-8,-2};
      int [] yS = {-8,0,8,0};
      xCorners = xS;
      yCorners = yS;
      myColor = 255;
      myCenterX = yes.getX();
      myCenterY = yes.getY();
      myPointDirection = yes.getp();
  }
  
  public float getX(){
      return (float) myCenterX;
    }
    
    public float getY(){
      return (float) myCenterY;
    }
   
   public void move(){
     myCenterX += yes.getdX();    
    myCenterY += yes.getdY();
   }
}
