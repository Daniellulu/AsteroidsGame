Star [] big = new Star[200];
Spaceship yes = new Spaceship();
boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;
public void setup() 
{
  size(500,500);
  background(255);
  for(int i = 0; i< big.length; i++){
  big[i] = new Star();
  }
}
public void draw() 
{
  background(0);
   for(int i = 0; i< big.length; i++){
  big[i].show();
   }
   yes.move();
  yes.show();
  if(wPressed == true){
  yes.accelerate(0.25);
  }
  
  if(sPressed == true){
  yes.accelerate(-0.25);
  }
  
  if(aPressed == true){
  yes.turn(-7);
  }
  
  if(dPressed == true){
  yes.turn(7);
  }
  
  if(wPressed == true && aPressed == true){
  yes.accelerate(0.25);
  yes.turn(-7);
  }
  
  if(wPressed == true && dPressed == true){
  yes.accelerate(0.25);
  yes.turn(7);
  }
  
  if(sPressed == true && aPressed == true){
  yes.accelerate(-0.25);
  yes.turn(-7);
  }
  
  if(sPressed == true && dPressed == true){
  yes.accelerate(-0.25);
  yes.turn(7);
  }
  
   if(sPressed == true && wPressed == true){
  yes.accelerate(-0.25);
  yes.accelerate(0.25);
  }
 
}
public void keyPressed(){
   if(key == 'd')
   dPressed = true;
   
   
   if(key == 'a') 
   aPressed = true;
   
   
   if(key == 'w') 
   wPressed = true;
   
   if(key == 's') 
   sPressed = true;
   
   if(key == 'h') 
   yes.hyperspace();
   
}
  public void keyReleased(){
     if(key == 'd')
   dPressed = false;
   
   
   if(key == 'a') 
   aPressed = false;
   
   
   if(key == 'w') 
   wPressed = false;
   
   if(key == 's') 
   sPressed = false;
  }
