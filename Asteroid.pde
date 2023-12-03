class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid(){
    corners = 17;
    xCorners = new int []{-30,-18,-11,-5,4,10,14,16,21,25,23,20,17,-3,-16,-28,-20};
    yCorners = new int []{-10,-11,-15,-20,-27,-31,-20,-11,-8,0,7,14,22,18,21,15,4};
    myCenterX = Math.random()*600+100;
    myCenterY = Math.random()*600+100;
    myColor = 125;
    rotSpeed = Math.random()*2+1;
    myPointDirection = Math.random()*360;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
  }
  
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
    
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
