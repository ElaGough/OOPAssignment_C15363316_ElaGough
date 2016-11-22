// How the Heart Function Works:
// x = 16*sin(t)^3
// y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t)

void setup() {
  size(1000, 600);
}

void draw() {
  background(0);//background(#262526);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  fill(255); //fill(#f60a20, 200);
  heart();
  //star();
}

void heart()
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