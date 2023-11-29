  boolean keyIs5 = false;
  boolean keyIs6 = false;
  boolean keyIs4 = false;
  boolean keyIs8 = false;
  boolean keyIs2 = false;
Spaceship ship = new Spaceship();
Star [] wee = new Star [200];
ArrayList <Asteroid> StarFighter = new ArrayList <Asteroid>();//your variable declarations here
public void setup() 
{
  size (500,500);//your code here
   for(int i = 0; i < wee.length; i++)
    wee[i] = new Star();
   for(int i = 0; i < 20; i++)
    StarFighter.add(new Asteroid());
}
public void draw() 
{
  background (0);
  for(int i = 0; i < wee.length; i++)
    wee[i].show();
  ship.show();
  ship.move();
  for(int i = 0; i < StarFighter.size(); i++){
      StarFighter.get(i).show();
      StarFighter.get(i).move();
     float collRange = dist((float)ship.getMyCenterX(), (float)ship.getMyCenterY(), (float)StarFighter.get(i).getMyCenterX(), (float)StarFighter.get(i).getMyCenterY()); 
      if(collRange < 20)
        StarFighter.remove(i);
  }
  if(keyIs6 == true)
      ship.accelerate(0.1);
    if(keyIs4 == true)
      ship.accelerate(-0.1);
    if(keyIs8 == true)
      ship.turn(5);
    if(keyIs2 == true)
      ship.turn(-5);
    if(keyIs5 == true)
    {
      ship.hyperspace();
      keyIs5 = false;
    }
}

public void keyPressed(){
   if (key == '5')
   keyIs5 = true;
   if (key == '6')
   keyIs6 = true;
   if (key == '4')
   keyIs4 = true;
   if (key == '8')
   keyIs8 = true;
   if (key == '2')
   keyIs2 = true;
}
public void keyReleased(){
  if(key == '5')
    keyIs5 = false;
  if(key == '6')
    keyIs6 = false;
  if(key == '4')
    keyIs4 = false;  
  if(key == '8')
    keyIs8 = false; 
  if(key == '2')
    keyIs2 = false;
}
//your code here
