class Bullet extends Floater
{
  public Bullet(Spaceship yes){
      myColor = 255;
      myCenterX = yes.myCenterX;
      myCenterY = yes.myCenterY;
      myPointDirection = yes.myPointDirection;
      double dRadians =myPointDirection*(Math.PI/180);
      myDirectionX = 5*Math.cos(dRadians);
      myDirectionY = 5*Math.sin(dRadians);
  }
  
  public float getX(){
      return (float) myCenterX;
    }
    
    public float getY(){
      return (float) myCenterY;
    }
   
   public void show() {
     noStroke();
    fill(255);
    ellipse((float)myCenterX,(float)myCenterY,3,3);
   }
   public void move(){
     myCenterX += myDirectionX;
     myCenterY += myDirectionY;
     //check to see if bullet went off screen and remove it
     if(myCenterX >width)
    {     
      zoom.remove(this);    
    }    
    else if (myCenterX<0)
    {     
      zoom.remove(this);    
    }    
    if(myCenterY >height)
    {    
      zoom.remove(this);    
    } 
    
    else if (myCenterY < 0)
    {     
      zoom.remove(this);   
    }   
   }
}
