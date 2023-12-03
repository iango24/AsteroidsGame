
Star [] nightSky = new Star [200];
Spaceship davyJones = new Spaceship();

Asteroid malphite = new Asteroid();
Asteroid garen = new Asteroid();
Asteroid jarvinIV = new Asteroid();
Asteroid jax = new Asteroid();
Asteroid illaoi = new Asteroid();
Asteroid sion = new Asteroid();
Asteroid nasus = new Asteroid();
Asteroid trundle = new Asteroid();
Asteroid vayne = new Asteroid();

ArrayList <Asteroid> rocks = new ArrayList<Asteroid>();

public void setup(){
  size(800,800);
  for(int i=0;i<nightSky.length;i++){
    nightSky[i]= new Star();
  }
  rocks.add(malphite);
  rocks.add(garen);
  rocks.add(jarvinIV);
  rocks.add(jax);
  rocks.add(illaoi);
  rocks.add(sion);
  rocks.add(nasus);
  rocks.add(trundle);
  rocks.add(vayne);
}
public void draw(){
  background(0);
  frameRate(60);
  for(int i=0;i<nightSky.length;i++){
    nightSky[i].show();
  }                  
  davyJones.move();
  davyJones.show();
  for (int m=0; m < rocks.size(); m++){
    rocks.get(m).move();
    rocks.get(m).show();
    float d = dist((float)davyJones.getX(), (float)davyJones.getY(), (float)rocks.get(m).getX(), (float)rocks.get(m).getY());
    if (d<30)
      rocks.remove(m);
  }
  
}
  public void keyPressed(){ //HYPERSPACE
    if (key == 'f'){
      davyJones.hyperspace();
    }
    if (key == 'w'){
      davyJones.accelerate(0.15);
    }
    if (key == 's'){
      davyJones.accelerate(-0.15);
    }
    if (key == 'd'){
      davyJones.turn(5);
    }
    if (key == 'a'){
      davyJones.turn(-5);
    }
  }
