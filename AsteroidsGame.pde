Spaceship ship = new Spaceship();
Star [] wee = new Star [200];//your variable declarations here
public void setup() 
{
  size (500,500);//your code here
   for(int i = 0; i < wee.length; i++)
    wee[i] = new Star();
}
public void draw() 
{
  background (0);
  for(int i = 0; i < wee.length; i++)
    wee[i].show();
  ship.show();
  ship.move();
}
public void keyPressed(){
   if (key == '5')
   ship.hyperspace();
   if (key == '6')
   ship.accelerate(0.2);
   if (key == '4')
   ship.accelerate(-0.2);
   if (key == '8')
   ship.turn(10);
   if (key == '2')
   ship.turn(-10);
}
//your
