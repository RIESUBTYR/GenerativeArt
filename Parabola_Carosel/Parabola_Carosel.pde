void setup()
{

 size(400,400);
}
 float t;
 
void draw()
{
  background(25);
  stroke(255);
  strokeWeight(5);
  translate(width/2,height/2);
  //point(x1(t),y1(t));
  //point(x2(t),y2(t));

  for(int i=0;i<100;i++)
  {
    float r=random(100);
    if(r>66)
    {
        stroke(5,255,random(255));
    }
    else if(r<66 && r>33)
    {
       // stroke(255,5,random(255));
    }
    else
    {
        stroke(random(255),5,255);
    }
     
    if(i%3==0)
      line(x1(t-i),y1(t-i),x2(t-i),y2(t-i));
}
  t+=0.8;
  
  saveFrame("render/par-####.png");
}


float x1(float t)
{
  return sin(t/10)*100;
}

float y1(float y)
{
  return cos(t/10)*10+20*sin(t/20);
}

float x2(float t)
{
  return cos(t/10)*100;
}

float y2(float y)
{
  return sin(t/10)*100+20*cos(t/20);
}
