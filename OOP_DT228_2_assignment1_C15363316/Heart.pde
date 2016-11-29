// How the Heart Function Works:
// x = 16*sin(t)^3
// y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t)

class Heart
{
  void render()
  {
    for (float angle = -90; angle < 90; angle += 0.5) {
      for (float q = 1; q < 2; q += 0.2) {
        float a = q*180;
        float t = angle+frameCount*1.5+a;
        float x = 16*pow(sin(radians(t)), 3);
        float y = -13*cos(radians(t)) + 5*cos(radians(2*t)) + 2*cos(radians(3*t)) + cos(radians(4*t));
        float s = cos(radians(angle))*q*7;
        ellipse(x*q*8, y*q*8, s, s);
      }
    }
  }
}




/* 

How Heart works: 

a = current side of heart, t = time, s = speed and width of ellipse, translated so that (0,0) is at centre of screen

for (float angle = -90; angle < 90; angle += 0.5) {
  for (float q = 1; q < 2; q += 0.2) {          => (start ring ; end ring ; middle rings)  => +=0.2 --> number of rings
    float a = q*180;
    float t = angle+frameCount*1.5+a;           => put this as t to avoid repetition //*1.5 to speed up heart
    
    //x and y co-ordinates as shown in previous comment
    float x = 16*pow(sin(radians(t)), 3);
    float y = -13*cos(radians(t)) + 5*cos(radians(2*t)) + 2*cos(radians(3*t)) + cos(radians(4*t));
    
    float s = cos(radians(angle))*q*7;          => *7 to increase size of ellipse
    ellipse(x*q*8, y*q*8, s, s);                => *8 to increase size of heart
  }
}

*/