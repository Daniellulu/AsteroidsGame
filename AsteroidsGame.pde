Star [] big = new Star[200];
Spaceship yes = new Spaceship();
 ArrayList <Asteroid> smol = new ArrayList <Asteroid>();
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
  for(int i = 0; i <10; i++){
      smol.add(new Asteroid());
  }
  
}
public void draw() 
{
  System.out.println(yes.getX());
  background(0);
   for(int i = 0; i< big.length; i++){
  big[i].show();
   }
   for(int i = 0; i< smol.size(); i++){
     smol.get(i).move();
     smol.get(i).show();
    if(dist(yes.getX(), yes.getY(),smol.get(i).getX(),smol.get(i).getY()) <= 20){
        smol.remove(i);
      }
  }
   

   yes.move();
  yes.show();
  if(wPressed == true){
  yes.accelerate(0.15);
  }
  
  if(sPressed == true){
  yes.accelerate(-0.15);
  }
  
  if(aPressed == true){
  yes.turn(-7);
  }
  
  if(dPressed == true){
  yes.turn(7);
  }
  
  if(wPressed == true && aPressed == true){
  yes.accelerate(0.15);
  yes.turn(-7);
  }
  
  if(wPressed == true && dPressed == true){
  yes.accelerate(0.15);
  yes.turn(7);
  }
  
  if(sPressed == true && aPressed == true){
  yes.accelerate(-0.15);
  yes.turn(-7);
  }
  
  if(sPressed == true && dPressed == true){
  yes.accelerate(-0.15);
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
 
