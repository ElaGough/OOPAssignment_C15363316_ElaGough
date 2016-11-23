class TrainingOrRelaxationScreen
{
  float relaxationX, relaxationY;      // Position of start button
  float trainingX, trainingY;      // Position of end button
  int relaxationSize = 300;     // Diameter of start button
  int trainingSize = 300;     // Diameter of end button
  color relaxationColor, trainingColor; //normal colour
  color relaxationHighlight, trainingHighlight; //highlighted colour when mouse hovers over button
  boolean relaxationOver = false;
  boolean trainingOver = false;
  
  void render()
  {
    relaxationColor = color(100);
    relaxationHighlight = color(200);
    trainingColor = color(100);
    trainingHighlight = color(200);
    relaxationX = 150;
    relaxationY = 150;
    trainingX = -450;
    trainingY = 150;
    
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
    
    fill(0);
    textSize(50);
    text("Relaxation",167,230);
    text("Training",-390,230);
    fill(200);
    textSize(90);
    text("Choose an option",-450,-200);
  }//end render()

  
    void update(float x, float y) {
      if ( overEnd(trainingX + width /2 , trainingY + height /2, trainingSize, trainingSize/3) ) {
        trainingOver = true;
        relaxationOver = false;
      } else if ( overRelaxation(relaxationX + width / 2, relaxationY + height /2 , relaxationSize, relaxationSize/3) ) {
        relaxationOver = true;
        trainingOver = false;
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
  
}//end TrainingOrRelaxationScreen