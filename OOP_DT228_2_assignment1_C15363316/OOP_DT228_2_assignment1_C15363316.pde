// How the Heart Function Works:
// x = 16*sin(t)^3
// y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t)

void setup() {
  size(1000, 600);
  heart = new Heart();
}

Heart heart;

void draw() {
  background(0);//background(#262526);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  fill(255); //fill(#f60a20, 200);
  heart.render();
  fill(255);
}