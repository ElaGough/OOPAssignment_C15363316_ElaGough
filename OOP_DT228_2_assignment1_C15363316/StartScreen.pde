class StartScreen extends ButtonColours
{
  float startX, startY;      // Position of start button
  float endX, endY;      // Position of end button
  float infoX, infoY;
  int startSize = 300;     // Diameter of start button
  int endSize = 300;     // Diameter of end button
  int infoSize = 100;
  boolean startOver = false;
  boolean endOver = false;
  boolean infoOver = false;
  
  void render()
  {
    startX = 150;
    startY = 150;
    endX = -450;
    endY = 150;
    infoX = -50;
    infoY = 180;
    
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
    
    if (infoOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(infoX,infoY,infoSize,50,40);
    
    fill(0);
    textSize(90);
    text("Start",167,230);
    text("End",-390,230);
    textSize(40);
    text("info",infoX+10,infoY+40,40);
    fill(200);
    textSize(65);
    text("Welcome to the Holodeck",-450,-200);
  }//end render()

  
    void update() {
      if ( overEnd(endX + width /2 , endY + height /2, endSize, endSize/3) ) {
        endOver = true;
        startOver = false;
        infoOver = false;
      } 
      else if ( overStart(startX + width / 2, startY + height /2 , startSize, startSize/3) ) {
        startOver = true;
        endOver = false;
        infoOver = false;
      } 
      else if ( overInfo(infoX + width / 2, infoY + height /2 , infoSize, infoSize/2) ) {
        startOver = false;
        endOver = false;
        infoOver = true;
      } 
      else {
        endOver = startOver = infoOver = false;
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
  
  boolean overInfo(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overInfo()
  
}//end of class