class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myCenterX = myCenterY = 400;
    myColor = 255;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setXspeed(int n){
    myXspeed = n;
  }
  public void setYspeed(int n){
    myYspeed = n;
  }
    public double getXspeed(){
    return myXspeed;
  }
    public double getYspeed(){
    return myYspeed;
  }
    public double getDirection(){
    return myPointDirection;
  }
  public void hyperspace(){ //if keypressed, if key = 'h'
    setXspeed(0);
    setYspeed(0);
    myCenterX = Math.random()*800;
    myCenterY = Math.random()*800;
    myPointDirection = Math.random()*360;
  }
}
