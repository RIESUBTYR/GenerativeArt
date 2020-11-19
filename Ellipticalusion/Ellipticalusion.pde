int offset=500;
void setup()
{
size(800,800);

noFill();
stroke(255);
strokeWeight(2);
}

float i=0;

void draw()
{
  
 translate(width/2,height/2);
 background(20);

  for(int j=1;j<=10;j++)
  {
    if(j%2==0)
     stroke(random(255),255,random(255));
    else if(j%3==0)
    stroke(255,255,random(255));
    else
     stroke(random(255),random(255),255);
   ellipse(0,0,sin(i/10)*300 - (10*j) ,cos(i/10)*300 - (20*j) );
   ellipse(0,0,cos(i/10)*300 - (20*j) ,sin(i/10)*300 - (10*j) );
   rotate(i/50);
   rect(-200,-200,400,400);
   //ellipse(0,0,mouseX - (20*j) ,mouseY- (20*j));
   //ellipse(0,0,mouseY- (20*j),mouseX- (20*j));
   saveFrame("render/elli-###.jpg");
 }
 
 i+=0.1;
}
