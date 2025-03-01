class Plant
{
  Flower[] f;
  Stem s;
  //number of flower
  int flowernumber;
  // Size of plant flower and stem
  float SizeofPlant,SizeofFlower,SizeofStem;
  //position
  float x,y;
  //to provide colors to flower
  int colors;
  float[] flowerX,flowerY;//position of flower
  int leaves;
   public Plant(float positionX,float positionY,float size,int numberofflowers)
  {
    //position of plant according to number
    x=positionX;
    y=positionY+100;
    
    // size of plant
    SizeofPlant=size;
    
    //Size of stem and flower corresponding to plant
    SizeofFlower=random(size-125,size+50);//to have flowers of diffrent size
    SizeofStem=0;//increase the size of stem as plant grows
    
    //random number of flowers each plant have
    flowernumber=numberofflowers;
    //position of flower as the plant is growing
    flowerX=new float[flowernumber];
    flowerY=new float[flowernumber];
    f=new Flower[flowernumber];
    for(int i=0;i<flowernumber;i++)
    {
     //position of flower around the stem
     flowerX[i]=x+int(random(-SizeofFlower/4,SizeofFlower/4));
     flowerY[i]=y+i*int(random(SizeofFlower,SizeofFlower+100));
     colors=int(random(0,3));
    }
  }
  void grow()
  {
    if(SizeofStem<maxupto)
    {
     SizeofFlower+=0.5;//Size of flower increases as plant grows
     SizeofStem+=0.5;//Size of stem increases as plant grows
     y-=0.25;//to grow stem in upward direction
    if(SizeofStem%10==0)//to increase the number of leaves as it grows 
    leaves++;
    for(int i=0;i<flowernumber;i++)
    {
     flowerY[i]-=0.25;//to move flower up as the stem goes up
    }
   }
  }
  void draw()
  {
    //location of Stem according to location of plant
    s=new Stem(x+SizeofPlant/(2*5),y,SizeofStem,leaves);
    s.draw();
    //location of flower according to stem
    for(int i=0;i<flowernumber;i++)
    {
     f[i]=new Flower(flowerX[i],flowerY[i],SizeofFlower,colors);
     f[i].draw();
    }
  }
}
