class Stars
{
  PVector pos;
  PVector velocity;
  
  Stars()
  {
    pos      =  new PVector(0,0); //(0, 0) is at the centre of the screen due to translate()
    velocity =  new PVector(random(-10,10),random(-10,10)); //randomises speed and direction of stars
  }
  
  void render()
  {
    ellipse(pos.x, pos.y, random(2,3), random(2,3)); //star
  }
  
  void update()
  {
    pos.add(velocity); //updating position
  }
  
}