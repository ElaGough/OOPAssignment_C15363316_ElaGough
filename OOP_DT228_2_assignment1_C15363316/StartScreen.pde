class StartScreen extends ButtonColours
{
  float startX, startY;      // Position of start button
  float endX, endY;      // Position of end button
  int startSize = 300;     // Diameter of start button
  int endSize = 300;     // Diameter of end button
  boolean startOver = false;
  boolean endOver = false;
  
  void render()
  {
    startX = 150;
    startY = 150;
    endX = -450;
    endY = 150;
    
    update();
    stroke(0);
    fill(100);
    
    if (startOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(startX,startY,startSize,100,40);  //rect(x1,y1,width,height,corners_ratio);
    
    if (endOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(endX,endY,endSize,100,40);
    
    fill(0);
    textSize(90);
    text("Start",167,230);
    text("End",-390,230);
    fill(200);
    textSize(65);
    text("Welcome to the Holodeck",-450,-200);
  }//end render()

  
    void update() {
      if ( overEnd(endX + width /2 , endY + height /2, endSize, endSize/3) ) {
        endOver = true;
        startOver = false;
      } 
      else if ( overStart(startX + width / 2, startY + height /2 , startSize, startSize/3) ) {
        startOver = true;
        endOver = false;
      } 
      else {
        endOver = startOver = false;
      }
    }//end update()

  
  
  //checking to see if mouse is at buttons
  boolean overStart(float x, float y, float w, float h) {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overStart()
  
  boolean overEnd(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overEnd()
  
}//end of class