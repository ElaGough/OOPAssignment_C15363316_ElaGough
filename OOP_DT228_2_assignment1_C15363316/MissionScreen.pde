class MissionScreen extends ButtonColours
{
  float backX, backY;
  int backSize = 100;
  boolean backOver = false;
  int num;
  int i;
  
  
  void render()
  {
    
    backX = 390;
    backY = 240;
    
    update();
    stroke(0);
    fill(100);
    
    if (backOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(backX,backY,backSize,50,40);
    
    fill(200);
    textSize(60);
    text("You have chosen:",-280,-170);
    textSize(70);
    text("Mission Training",-300,-70);
    stroke(200);
    line(-300, -50, 320, -50);
    textSize(45);
    text("Program may take a moment to load",-450,50);    
    text("Please proceed when door opens",-420,150);
    text("Enjoy",-75, 230);
    fill(0);
    textSize(30);
    text("Back",backX+15,backY+35);
    
  }
  
  void update() {
    if ( overBack(backX + width / 2, backY + height /2 , backSize, backSize/2) ) {
      backOver = true;
    } else {
      backOver = false;
    }
  }
  
  boolean overBack(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overBack()
}