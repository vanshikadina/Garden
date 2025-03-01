class Butterfly
{
  //position of butterfly
  float x;
  float y;
  float red,blue,green;
  float size;
  //to flap the wings of butterfly
  int timertoFlap;
  //speed of butterfly
  float v=random(1,5);
  public Butterfly(float positionX, float positionY,float r,float g,float b)
  {
    x=positionX;
    y=positionY;
    red=r;
    blue=b;
    green=g;
    size=random(40,60);
    timertoFlap=0;
  }
  void draw()
  {
    int m=millis();
    noStroke();
    //wings of butterfly
    fill(red,green,blue);
    if((m-timertoFlap)<150)
    {
    circle(x,y-size/5,size);
    circle(x+size-size/5,y-size/5,size);
    }
    else if(m-timertoFlap<300)
    {
    circle(x,y+size*3/5,size);
    circle(x+size-size/5,y+size*3/5,size);
    }
    else
    {
     timertoFlap=m;
    }
    //body of butterfly
    fill(0);
    ellipse(x+size/3,y+size/5,size*2,size/6);
  }
  void motion()
  {
   // to roam it around the ground   
    if(x>width || x<0)
    v=-v;
    x+=v;
    if(y<height-100)
    y+=random(-5,5);
    else
    y-=5;
  }
}
