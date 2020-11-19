  
// Click within the image to change 
// the value of the rectangle after
// after the mouse has been clicked

ArrayList<Firewrk> p;
PVector gravity;

Particle firework;
void setup()
{
  p=new ArrayList<Firewrk>();
  size(800,800);
  gravity=new PVector(0,0.2);
  //for(int i=0;i<10;i++)
  //   p.add(new Firewrk());
  //firework= new Particle(new PVector(random(width),height));
 
}

float t=0;

void draw() {
  colorMode(RGB);
  background(0);
  
  if(random(1)<0.1)
    p.add(new Firewrk());
  
   for(int i=p.size()-1;i>=0;i--)
    {
    Firewrk firwork=p.get(i);
    firwork.update();
      
    firwork.show();
    
  }
}
