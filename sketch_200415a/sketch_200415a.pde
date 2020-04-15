int y;
void setup()
{
  y=height/2;
  size(600, 600);
  background(100);
  //fill(255,0,0);
  //ellipse( width/2, , 50, 50);
  
}

void draw()
{
  fill(0, 0 ,255);
  ellipse(width/2, y, 50, 50);
  y=y+1;
}
