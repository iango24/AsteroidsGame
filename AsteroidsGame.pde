Star [] nightSky = new Star [200];
Spaceship davyJones = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> mista = new ArrayList <Bullet>();
boolean wa = false;
boolean sa = false;
boolean ab = false;
boolean db = false;
boolean shoot = false;

public void setup(){
  size(800,800);
  for(int i=0;i<nightSky.length;i++){
    nightSky[i]= new Star();
  }
  for(int i=0;i<10;i++){
    rocks.add(new Asteroid());
  }
  
}
public void draw(){
  background(0);
  frameRate(60);
  for(int i=0;i<nightSky.length;i++){
    nightSky[i].show();
  }                  
  //get rid of asteroids if collide with spaceship
  for (int m=0; m < rocks.size(); m++){
    rocks.get(m).move();
    rocks.get(m).show();
    float d = dist((float)davyJones.getX(), (float)davyJones.getY(), (float)rocks.get(m).getX(), (float)rocks.get(m).getY());
    if (d<30)
      rocks.remove(m);
  }
  
  for (int b = 0; b < mista.size(); b++){
    mista.get(b).move();
    mista.get(b).show();
    for(int a = 0; a < rocks.size(); a ++){
      float f = dist((float)mista.get(b).getX(), (float)mista.get(b).getY(), (float)rocks.get(a).getX(), (float)rocks.get(a).getY());
      if (f<30){
        rocks.remove(a);
        mista.remove(b);
      }
    }
    //get rid of bullets as they go off screen
    if(mista.get(b).getX()>795||mista.get(b).getX()<5||mista.get(b).getY()>795||mista.get(b).getY()<5){
      mista.remove(b);
    }
   }
  

  //SET ALL THE BOOLEANS HERE: IF ___ == TRUE, DO SOMETHING (TURN, ACCELERATE, ETC.)
   if(wa == true)
     davyJones.accelerate(0.1); 
   if(sa == true)
     davyJones.accelerate(-0.1);
   if(db == true)
     davyJones.turn(5);
   if(ab == true)
     davyJones.turn(-5);
   if(shoot==true)
     mista.add(new Bullet(davyJones));
   
     
   davyJones.move();
   davyJones.show();
   
   
}
  public void keyPressed(){ //HYPERSPACE
    if (key == 'f')
      davyJones.hyperspace();   
    if (key == 'w')
       wa = true;    
    if (key == 's')
       sa = true;    
    if (key == 'd')
       db = true;    
    if (key == 'a')
       ab = true;    
    if (key == 'b')
       shoot = true;
  }
  public void keyReleased(){
    if (key == 'w')
       wa = false;
    if (key == 's')
       sa = false;    
    if (key == 'd')
       db = false;    
    if (key == 'a')
       ab = false;    
    if (key == 'b')
       shoot = false;
  }
