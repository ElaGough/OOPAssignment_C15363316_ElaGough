class RelaxationScreen extends ButtonColours
{
  float risaX, risaY;      // Position of start button
  float bakuX, bakuY;      // Position of end button
  float edenX, edenY;      // Position of start button
  float backX, backY;
  int risaSize = 300;     // Diameter of weapons button
  int bakuSize = 300;     // Diameter of combat button
  int edenSize = 300;     // Diameter of combat button
  int backSize = 100;
  
  boolean risaOver = false;
  boolean bakuOver = false;
  boolean edenOver = false;
  boolean backOver = false;
  
  void render()
  {
    backOver = false;
    risaX = -150;
    risaY = -150;
    bakuX = -460;
    bakuY = -150;
    edenX = 160;
    edenY = -150;
    backX = 390;
    backY = 240;
    
    update(mouseX, mouseY);
    stroke(0);
    fill(100);
    
    if (risaOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(risaX,risaY,risaSize,100,40);  //rect(x1,y1,width,height,corners_ratio);
    
    if (bakuOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(bakuX,bakuY,bakuSize,100,40);
    
    if (edenOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(edenX,edenY,edenSize,100,40);
    
    if (backOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(backX,backY,backSize,50,40);
    
    fill(0);
    textSize(45);
    text("Risa",risaX+95,risaY+60);
    text("Ba'ku",bakuX+80,bakuY+60);
    text("Eden",edenX+90,edenY+60);
    
    textSize(30);
    text("Back",backX+15,backY+35);
    
    fill(200);
    textSize(70);
    text("Relaxation",-210,-250);
    textSize(40);
    text("a relaxed mind is a productive mind",-380,-170);
  }//end render()

  
    void update(float x, float y) {
      if ( overBaku(bakuX + width /2 , bakuY + height /2, bakuSize, bakuSize/3) ) {
        bakuOver = true;
        risaOver = false;
        edenOver = false;
        backOver = false;
      } else if ( overRisa(risaX + width / 2, risaY + height /2 , risaSize, risaSize/3) ) {
        risaOver = true;
        bakuOver = false;
        edenOver = false;
        backOver = false;
      } else if ( overEden(edenX + width / 2, edenY + height /2 , edenSize, edenSize/3) ) {
        risaOver = false;
        bakuOver = false;
        edenOver = true;
        backOver = false;
      } else if ( overBack(backX + width / 2, backY + height /2 , backSize, backSize/2) ) {
        risaOver = false;
        bakuOver = false;
        edenOver = false;
        backOver = true;
      } else {
        bakuOver = risaOver = edenOver = backOver = false;
      }
    }//end update()

  
  
  //checking to see if mouse is at buttons
  boolean overRisa(float x, float y, float w, float h) {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overStart()
  
  boolean overBaku(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overEnd()
  
  boolean overEden(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overEnd()
  
  boolean overBack(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overBack()
  
}//end RelaxationScreen