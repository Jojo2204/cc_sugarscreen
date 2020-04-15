PVector pos = new PVector( 0, 0);
PVector direction = new PVector( 0, 0);
int max_speed=10;
void setup()
{
  direction.x=random(1,max_speed);
  direction.y=random(1,max_speed);
  size(600, 600);
  background(100);
  //fill(255,0,0);
  //ellipse( width/2, , 50, 50);
  
}

void draw()
{
  fill(0, 0 ,255);
  ellipse(pos.x, pos.y, 50, 50);
  if (pos.x < 0)
  {
    direction.x=+random(1,max_speed);
    
  }
  if (pos.x >= 600)
  {
    direction.x=-random(1,max_speed);
    
  }
  if (pos.y < 0)
  {
    direction.y=+random(1,max_speed);
    
  }
  if (pos.y >= 600)
  {
    direction.y=-random(1,max_speed);
    
  }
  pos.y=pos.y+direction.y;
  pos.x=pos.x+direction.x;
}
