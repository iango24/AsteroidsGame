class Bullet extends Floater{
  public Bullet(Spaceship davyJones){
    myCenterX = davyJones.getX();
    myCenterY = davyJones.getY();
    myXspeed = davyJones.getXspeed();
    myYspeed = davyJones.getYspeed();
    myPointDirection = davyJones.getDirection();
    accelerate(6);
  }
  public void show(){
    fill(123,345,12);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
    fill(0);
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public double getX(){
      return myCenterX;
    }
  public double getY(){
      return myCenterY;
    }
}
