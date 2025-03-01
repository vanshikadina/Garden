//if you want to add your plant according to the location you want just remove the aaray and put plant according to that
//Plant(x,y,Size,flowers); positions and number of flower you want in each plant
//Butterfly(x,y,red,green,blue);position and color you want
//for now i have put plants at a certain distance aacording to width of screen//and each have 1 flower
int numberofPlants=7;
int numberofbutterfly=int(random(5,7));
int numberofFlower=1;

//CODE BEGINS HERE
//growth of each plant at startin point donot do less than 50
float Growth=100;
float maxupto=200;

Butterfly[] b;
Plant[] p;
float[] plantX,plantY;// to place plants in an organised way.
void setup () 
{
  size(1000,800);
  p=new Plant[numberofPlants];
  plantX=new float[numberofPlants];
  plantY=new float[numberofPlants];
  b=new Butterfly[numberofbutterfly];
  for(int i=0;i<p.length;i++)
  {
    //to keep plants seprated at certain distance
    plantX[i]=50+i*width/numberofPlants;
    //to provide different y position to a plants
    plantY[i]=height-Growth-random(200,300);
    //Plant function that includes location size of plant and petals a flower has
    p[i]=new Plant(plantX[i],plantY[i],Growth,numberofFlower);
  }
  for(int i=0;i<b.length;i++)
  {
     //Butterfly function that includes loacation,color(r,g,b)
    b[i]=new Butterfly(random(width)+random(-Growth/2,Growth/2),random(0,height-100),random(100,255),random(0,200),random(100,255));
  }
}

void draw() 
{
  background(174,234,240);
  //Sun
  fill(255,255,0);
  circle(width,0,200);
  
  //cloud
  fill(255);
  circle(50,height*2/3,500);
  circle(500,height*2/3,700);
  circle(950,height*2/3,500);
  //Ground
  fill(88,4,9);
  rect(0,height-75,width,height-100);

  for(int i=0;i<p.length;i++)
  {
  p[i].grow();
  p[i].draw();
  }
  
  for(int i=0;i<b.length;i++)
  {
  b[i].draw();
  b[i].motion();
  }
}
