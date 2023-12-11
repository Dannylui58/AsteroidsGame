  boolean keyIs5 = false;
  boolean keyIs6 = false;
  boolean keyIs4 = false;
  boolean keyIs8 = false;
  boolean keyIs2 = false;
  boolean keyIs0 = false;
Spaceship ship = new Spaceship();
ArrayList <Bullet> bolt = new ArrayList <Bullet>();
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
      for(int i = 0; i < bolt.size(); i++){
      bolt.get(i).show();
      bolt.get(i).move();
      bolt.get(i).timerUp();
      if(bolt.get(i).getMyTimer() == 600)
      {
        bolt.remove(i);
        break;
      }
      for(int j = 0; j < StarFighter.size(); j++)
        {
          float desRange = dist((float)bolt.get(i).getMyCenterX(), (float)bolt.get(i).getMyCenterY(), (float)StarFighter.get(j).getMyCenterX(), (float)StarFighter.get(j).getMyCenterY());
          if(desRange < 10)
          {
            StarFighter.remove(j);
            bolt.remove(i);
            break;
          }
        }
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
    if(keyIs0 == true)
      bolt.add(new Bullet(ship));    
    if(StarFighter.size() < 1){
      for(int i = 0; i < 20; i++){
        StarFighter.add(new Asteroid());
      }
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
   if (key == '0')
   keyIs0 = true;   
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
  if (key == '0')
    keyIs0 = false;    
}
//your code here
