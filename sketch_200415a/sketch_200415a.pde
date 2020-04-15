PVector pos = new PVector( 0, 0);
PVector direction = new PVector( 0, 0);
void setup()
{
  direction.x=+1;
  direction.y=+1;
  size(600, 600);
  background(100);
  //fill(255,0,0);
  //ellipse( width/2, , 50, 50);
  
}

void draw()
{
  fill(0, 0 ,255);
  ellipse(pos.x, pos.y, 50, 50);
  if (pos.x > 600 || pos.x < 0)
  {
    direction.x=-direction.x;
  }
  if (pos.y > 600 || pos.y < 0)
  {
    direction.y=-direction.y;
  }
  pos.y=pos.y+direction.y;
  pos.x=pos.x+direction.x;
}
