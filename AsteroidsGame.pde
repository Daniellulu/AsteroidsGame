Star [] big = new Star[200];
Spaceship yes = new Spaceship();
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
 
}
public void keyPressed(){
   if(key == 'd')
   yes.turn(10); 
   
   if(key == 'a') 
   yes.turn(-10);
   
   
   if(key == 'w') 
   yes.accelerate(0.25);
   
   if(key == 's') 
   yes.accelerate(-0.25);
   
   if(key == 'h') 
   yes.hyperspace();
   
   
   
}
