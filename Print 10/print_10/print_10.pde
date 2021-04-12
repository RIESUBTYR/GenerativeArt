
void setup(){
  size(1920,900);
  background(252,118,106);
  stroke(255);
  strokeWeight(2);
  fill(255,0,0);
}
int spacing=20;
int x=0;
int y=0;
void draw(){
  float bright=random(20);
  stroke(91,132,177);
  if(random(1)<0.5)
  {
  //strokeWeight(random(5));
  line(x,y,x+spacing,y+spacing);
  }
  else
  {
     //strokeWeight(random(2));
    line(x,y+spacing,x+spacing,y);
  }
  
  //beginShape();
  
  //vertex(
  
  
  
  x+=spacing;
  
  if(x>width)
  {
    x=0;
    y+=spacing;
  }
}
