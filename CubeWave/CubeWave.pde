int w=20;

float angle=0;
float ma;

float maxD;

void setup() {
  size(600, 600,P3D);
  ma=atan(1/sqrt(2));
  maxD=dist(0,0,200,200);
  noStroke();
}

void draw() {
  background(180,220,255);
  ortho(-600,600,-600,600,-600,900);
  ambientLight(100,100,100);
  pointLight(0,255, 0, width/2,100, height/2);
  translate(300,300,50);
  rotateX(-(PI/4));
  //rotateY(ma);
  //rotateY(-PI/4);
  rotateY(angle*0.25);
  
  
  
  for(int z=0;z<height;z+=w)
  {
  for(int x=0;x<width;x+=w)
  {
    push();
    float d=dist(x,z,width/2,height/2);
    float offset=map(d,0.0,maxD,(float)(-PI),(float)(PI));
    float a=angle+offset+w;
    float h=map(sin(a),-1,1,w+10,400);
    translate (x-width/2,0,z-height/2);
    fill(255,255,0);
    //normalMaterial();
    box(w-2,h,w-2);
    //rect(x-width/2,0,w-2,h);
    pop();
  }
  }
  saveFrame("/render/wave-####.png");
  angle -=0.05; 
}
