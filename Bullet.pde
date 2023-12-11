class Bullet extends Floater
{
  public final static int BULLET_LIFESPAN = 600; 
  private int bulletTimer;
  public Bullet(Spaceship ship){
    myCenterX = ship.getMyCenterX();
    myCenterY = ship.getMyCenterY(); 
    myXspeed = ship.getMyXspeed();
    myYspeed = ship.getMyYspeed();   
    myPointDirection = ship.getmyPointDirection();
    myColor = color(0, 0, 255);
    bulletTimer = 0;
    accelerate(6.0); 
  }
  
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
   public double getMyCenterX()
    {
      return myCenterX;
    }
    
    public double getMyCenterY()
    {
      return myCenterY;
    }
  public void timerUp(){
    bulletTimer++;
  }
  public int getMyTimer(){
    return bulletTimer;
  }
}
