class Stars
{
  PVector pos;
  PVector velocity;
  
  Stars ( )
  {
    pos = new PVector(0,0);
    velocity = new PVector(random(-10,10),random(-10,10));
  }
  
  void render()
  {
    ellipse(pos.x, pos.y, 3, 3);
  }
  
  void update()
  {
    pos.add(velocity);
  }
  
}