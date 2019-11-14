class Star //note that this class does NOT extend Floater
{
   private int myX, myY;
   private float col1,col2,col3;
  
  public Star(){
    myX = (int)(Math.random()* 500);
    myY = (int)(Math.random()* 500);
    col1 = (float)(Math.random() * 255);
    col2 = (float)(Math.random() * 255);
    col3 = (float)(Math.random() * 255);
  }
  public void show(){
    noStroke();
    fill(col1,col2,col3);
    ellipse(myX,myY,3,3);
  }
}
