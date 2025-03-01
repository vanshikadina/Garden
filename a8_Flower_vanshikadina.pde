class Flower
{
  float sizeofFlower;
  float x;
  float y;
  int flowercolor;
  int petalnums;
  float red,blue,green;
  public Flower(float positionX,float positionY,float size,int Color)
  {
    //set the position of flower
    x=positionX;
    y=positionY;
    sizeofFlower=size;
    //color
    flowercolor=Color;
    //to increase the petals as the flower grows
    petalnums=int(size/10);
  }
  void draw()
  {
    if(y<height-200)// to create flower at certain height
    {
    if(petalnums>4)
    {
    //first petal
    FlowerColor(flowercolor);
    pushMatrix();
    translate(x,y);
    for (int i=0; i <petalnums; i++) 
    {
    translate(sizeofFlower/petalnums, 0);//to give it a certain position acc. to plant
    strokeWeight(0);
    stroke(0);
    ellipse(0,0,sizeofFlower*2.5/(petalnums),sizeofFlower*5/(petalnums));
    rotate (TWO_PI/petalnums);//to make petals in circular way
    }
    popMatrix(); 
    }
    
    //then face
    noStroke();
    fill(118,26,16);
    //increase the size of face as well but should not be so small when petals is less than certain number
    if(petalnums<15)
    ellipse(x+sizeofFlower/(2*petalnums),y+sizeofFlower/6.5,30,30);
    else
    ellipse(x+sizeofFlower/(2*petalnums),y+sizeofFlower/6.5,sizeofFlower/5,sizeofFlower/5);
    }
  }
}
//to give specific colors to plant 
void FlowerColor(int colors)
{
  color red=color(247,183,5);
  color yellow=color(255,255,0);
  color pink=color(247,5,167);
  
  if(colors==0)
  fill(red);
  else if(colors==1)
  fill(yellow);
  else 
  fill(pink);
}
