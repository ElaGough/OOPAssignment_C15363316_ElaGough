class TrainingOrRelaxationScreen
{
  float relaxationX, relaxationY;      // Position of start button
  float trainingX, trainingY;      // Position of end button
  float backX, backY;
  int relaxationSize = 300;     // Diameter of start button
  int trainingSize = 300;     // Diameter of end button
  int backSize = 200;
  color relaxationColor, trainingColor, backColor; //normal colour
  color relaxationHighlight, trainingHighlight, backHighlight; //highlighted colour when mouse hovers over button
  boolean relaxationOver = false;
  boolean trainingOver = false;
  boolean backOver = false;
  
  void render()
  {
    relaxationColor = color(100);
    relaxationHighlight = color(200);
    trainingColor = color(100);
    trainingHighlight = color(200);
    backColor = color(100);
    backHighlight = color(200);
    relaxationX = 150;
    relaxationY = -150;
    trainingX = -450;
    trainingY = -150;
    backX = 150;
    backY = 150;
    
    update(mouseX, mouseY);
    stroke(0);
    fill(100);
    
    if (relaxationOver) {
      fill(relaxationHighlight);
    } else {
      fill(relaxationColor);
    }
    rect(relaxationX,relaxationY,relaxationSize,100,40);  //rect(x1,y1,width,height,corners_ratio);
    
    if (trainingOver) {
      fill(trainingHighlight);
    } else {
      fill(trainingColor);
    }
    rect(trainingX,trainingY,trainingSize,100,40);
    
    if (backOver) {
      fill(backHighlight);
    } else {
      fill(backColor);
    }
    rect(backX,backY,backSize,100,40);
    
    fill(0);
    textSize(45);
    text("Relaxation",relaxationX+20,relaxationY+60);
    text("Training",trainingX+45,trainingY+60);
    fill(200);
    textSize(70);
    text("Choose an option",-340,-200);
  }//end render()

  
    void update(float x, float y) {
      if ( overEnd(trainingX + width /2 , trainingY + height /2, trainingSize, trainingSize/3) ) {
        trainingOver = true;
        relaxationOver = false;
        backOver = false;
      } else if ( overRelaxation(relaxationX + width / 2, relaxationY + height /2 , relaxationSize, relaxationSize/3) ) {
        relaxationOver = true;
        trainingOver = false;
        backOver = false;
      } else if ( overBack(backX + width / 2, backY + height /2 , backSize, backSize/3) ) {
        relaxationOver = false;
        trainingOver = false;
        backOver = true;
      } else {
        trainingOver = relaxationOver = false;
      }
    }//end update()

  
  
  //checking to see if mouse is at buttons
  boolean overRelaxation(float x, float y, float w, float h) {
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
  
  boolean overBack(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overEnd()
  
}//end TrainingOrRelaxationScreen