class Particle{
  
  PVector loc;
  PVector vel;
  PVector acc;
  

  
  boolean isFirework;
  float lifespan  =255;
  
  Particle(PVector l,boolean isFire){
      acc=new PVector(0,0);
      isFirework=isFire;
      if(isFirework){
      vel=new PVector(0,random(-15,-13));
      }
      else{
      vel=PVector.random2D();
      vel.mult(random(1,3));
      }
      loc= l.copy();
  }
  
  void colran()
  {
    fill(255,random(255),random(255)%20,lifespan);
  }
  
  void addForce(PVector force)
  {
    this.acc.add(force);
  }
  
  void update(){
  vel.add(acc);
  loc.add(vel);
  acc.mult(0);
  
  if(!isFirework)
  {
  lifespan-=2;
  vel.mult(0.85);
  }  
}
  
  boolean isDead(){
  if(lifespan <=0)
  {
    return true;
  }
  else
  {
    return false;
  }
  }
  
  void show(){
  colorMode(HSB);
  
  if(isFirework)
    strokeWeight(4);
  else
    strokeWeight(2);
  //ellipse(loc.x,loc.y,12-(lifespan%9),12);
  point(loc.x,loc.y);
  }

}
