class Stem
{
  float SizeofStem;
  float x;
  float y;
  float[] yes;
  int leaves;
  public Stem(float positionX,float positionY,float size,int leaf)
  {
    x=positionX;
    y=positionY;
    SizeofStem=size;
    leaves=leaf;
    yes=new float[leaves];
    for(int i=0;i<leaves;i++)
    {
     yes[i]=y+100*i+100;//leaves position in alternate position
    }
  }
  void draw()
  {
    SizeofStem++;
    //Leaves
    fill(52, 185, 60);
    noStroke();
    for(int i=0;i<leaves;i++)
    {
    if(yes[i]<height-100)// to make leaves only above the ground
    {
    // to give alternate position to leaves
    if(i%2==0)
    {
    beginShape();
    ellipse(x+SizeofStem/7,yes[i], SizeofStem*2/7,SizeofStem*2/7);
    triangle(x+SizeofStem/7,yes[i]-SizeofStem/7,x+SizeofStem*2/3,yes[i],x+SizeofStem/7,yes[i]+SizeofStem/7);
    endShape();
    }
    else
    {
    beginShape();
    ellipse(x-SizeofStem/7,yes[i], SizeofStem*2/7,SizeofStem*2/7);
    triangle(x-SizeofStem/7,yes[i]-SizeofStem/7,x-SizeofStem*2/3,yes[i],x-SizeofStem/7,yes[i]+SizeofStem/7);
    endShape();
    }
    }
    }
    
    //Stem
    strokeWeight(10);
    stroke(52, 185, 60);
    line(x,y,x,height);
  }
}
