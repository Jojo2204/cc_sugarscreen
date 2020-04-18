PVector pos = new PVector( 0, 0);
PVector direction = new PVector( 0, 0);
int max_speed=10;
void setup()
{
  direction.x=random(1,max_speed);
  direction.y=random(1,max_speed);
  size(600, 600);
  background(100);
}

void draw()
{
  // utiliser background pour nettoyer l'ecran avant de redessiner
  //background(100);
  
  //enlever si background utiliser
  noStroke();
  fill(100);
  ellipse(pos.x, pos.y, 60, 60);
  

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
  
  stroke(0,0,0);
  fill(0, 0 ,255);
  ellipse(pos.x, pos.y, 50, 50);
}
/*
class Ball
{
  PVector pos;
  int size;
  
  Ball(int _size)
  {
    pos = new PVector (width/2, height/2);
    size = _size;
  }
  
  void display()
  {
    
  }
}
*/
