
 int OFF_MAX=45;
void setup(){
  size(1070,1050,P3D);
  t=0;
  noStroke();
  frameRate(120);
}

float t;

void draw(){
  background(20);
  translate(width/2,height/2,700);
  
  rotateY(frameCount * 0.015);
  rotateX(frameCount * 2);
  rotateZ(frameCount * 0.015);
  
  
  for(int i= -OFF_MAX ;i<=OFF_MAX; i+=15)
  {
    for(int j=-OFF_MAX;j<OFF_MAX;j+=15)
    {
      for(int k=-OFF_MAX;k<OFF_MAX;k+=15)
      {
        pushMatrix();
        fill(colorFromOff(i),colorFromOff(j),colorFromOff(k));
        translate(i,j,k);
        //rotateX(frameCount*0.08);
        //if(k%2==0 && i%2==0)
          box(sin(t/50)*6);
      //  else
         // box(sin(t/50)*6);
        popMatrix();
      }
   }
  }
  
  t+=0.5;
  //saveFrame("render/cube-####.png");
}


int colorFromOff(int offset){
  return (int) ((offset+ OFF_MAX) / (2.8* OFF_MAX) *255);
}
