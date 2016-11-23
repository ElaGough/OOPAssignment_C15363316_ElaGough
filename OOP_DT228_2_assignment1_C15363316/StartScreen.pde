boolean EndButtonPressed = false;
boolean StartButtonPressed = false;

int startX, startY;      // Position of start button
int endX, endY;      // Position of end button
int startSize = 100;     // Diameter of start button
int endSize = 100;     // Diameter of end button
color startColor, endColor, baseColor;
color startHighlight, endHighlight;
color currentColor;
boolean startOver = false;
boolean endOver = false;


class StartScreen
{
  
  void render()
  {
    startColor = color(0);
    startHighlight = color(51);
    endColor = color(255);
    endHighlight = color(204);
    baseColor = color(102);
    currentColor = baseColor;
    startX = width/2-startSize-10;
    startY = height/2-startSize/2;
    endX = width/2-endSize-10;
    endY = height/2-endSize/2;
    
    stroke(200);
    fill(100);
    rect(150,150,300,100,40);  //rect(x1,y1,width,height,corners_ratio);
    rect(-450,150,300,100,40);
    
    fill(0);
    textSize(90);
    text("Start",167,230);
    text("End",-390,230);
    
    update(mouseX, mouseY);
    
    if (startOver) {
      fill(startHighlight);
    } else {
      fill(startColor);
    }
    stroke(255);
    
    if (endOver) {
      fill(endHighlight);
    } else {
      fill(endColor);
    }
    
    
      /*if(StartButtonPressed == true) {
        screen1 = false;
        screen2 = true;
      }
      if(EndButtonPressed == true) {
        System.exit(0);
      }*/
  }
  
  void update(int x, int y) {
    if ( overEnd(endX, endY, endSize, endSize) ) {
      endOver = true;
      startOver = false;
    } else if ( overStart(startX, startY, startSize, startSize) ) {
      startOver = true;
      endOver = false;
    } else {
      endOver = endOver = false;
    }
}

void mousePressed() {
  if (endOver) {
    currentColor = endColor;
  }
  if (startOver) {
    currentColor = startColor;
  }
}

  
  
  //checking to see if mouse is at buttons
  boolean overStart(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean overEnd(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
  
}