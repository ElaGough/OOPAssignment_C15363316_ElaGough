class CombatScreen extends ButtonColours
{
  float backX, backY;
  int backSize = 100;
  boolean backOver = false;
  
  
  
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