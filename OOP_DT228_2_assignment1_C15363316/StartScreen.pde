boolean EndButtonPressed = false;
boolean StartButtonPressed = false;

class StartScreen
{
  
  void render()
  {
    stroke(200);
    fill(100);
    rect(150,150,300,100,40);  //rect(x1,y1,width,height,corners_ratio);
    rect(-450,150,300,100,40);
      if(StartButtonPressed == true) {
        screen1 = false;
        screen2 = true;
      }
  }
  
}