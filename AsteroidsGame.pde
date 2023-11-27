
Star [] nightSky = new Star [200];
Spaceship davyJones = new Spaceship();
public void setup(){
  size(800,800);
  for(int i=0;i<nightSky.length;i++){
    nightSky[i]= new Star();
  }
}
public void draw(){
  background(0);
  frameRate(60);
  for(int i=0;i<nightSky.length;i++){
    nightSky[i].show();
  }                  
  davyJones.move();
  davyJones.show();  
}
  public void keyPressed(){ //HYPERSPACE
    if (key == 'f'){
      davyJones.hyperspace();
    }
    if (key == 'w'){
      davyJones.accelerate(0.2);
    }
    if (key == 's'){
      davyJones.accelerate(-0.2);
    }
    if (key == 'd'){
      davyJones.turn(5);
    }
    if (key == 'a'){
      davyJones.turn(-5);
    }
  }
