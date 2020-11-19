class Firewrk{

  Particle firework;
  boolean isExploded;
  float hue;
  ArrayList<Particle> p=new ArrayList<Particle>();
  
  Firewrk()
  {
    firework= new Particle(new PVector(random(width),height),true);
    hue=random(255);
  }
  
  void update()
  {
    if(!isExploded)
    {
    firework.addForce(gravity);
    firework.update();
    if(firework.vel.y >=0)
    {
      this.isExploded = true;
      this.explode();
    }
    }
    
    for(int i=0;i<p.size();i++)
    {
      p.get(i).addForce(gravity);
      p.get(i).update();
    }
  }
  
  
  void explode()
  {
    for(int i=0;i<50;i++)
    {
      p.add(new Particle(firework.loc,false));
    }
  }
  
  void show()
  {
    colorMode(HSB);
    stroke(hue,255,255);
    if(!isExploded)
      firework.show();
  

   for(int i=0;i<p.size();i++)
    {
      p.get(i).show();
    }
  
  }
}
