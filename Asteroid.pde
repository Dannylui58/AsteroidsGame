class Asteroid extends Floater
{
  private double rotation;
  
  public Asteroid(){
    corners = 4;
    xCorners = new int[]{-8, -8, 8, 8};
    yCorners = new int[]{8, -8, 8, -8};
    myColor = color(#838181);
    myCenterX = Math.random()*1000;
    myCenterY = Math.random()*1000;
    myXspeed = Math.random()*6-3;
    myYspeed = Math.random()*6-3; 
    myPointDirection = 0; 
    rotation = Math.random()*20-10;
  }
 public void move(){
    turn(rotation);
    super.move();
  }
  
  public double getMyCenterX(){
    return myCenterX;
  }
  
  public double getMyCenterY(){
    return myCenterY;
  }  
}
