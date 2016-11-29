class TrainingOrRelaxationScreen extends ButtonColours
{
  float relaxationX, relaxationY;      // Position of start button
  float trainingX, trainingY;      // Position of end button
  float backX, backY;
  int relaxationSize = 300;     // Diameter of start button
  int trainingSize = 300;     // Diameter of end button
  int backSize = 100;
  boolean relaxationOver = false;
  boolean trainingOver = false;
  boolean backOver = false;
  
  void render()
  {
    backOver = false;
    relaxationX = 150;
    relaxationY = -150;
    trainingX = -450;
    trainingY = -150;
    backX = 390;
    backY = 240;
    
    update();
    stroke(0);
    fill(100);
    
    if (relaxationOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(relaxationX,relaxationY,relaxationSize,100,40);  //rect(x1,y1,width,height,corners_ratio);
    
    if (trainingOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(trainingX,trainingY,trainingSize,100,40);
    
    if (backOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(backX,backY,backSize,50,40);
    
    fill(0);
    textSize(45);
    text("Relaxation",relaxationX+20,relaxationY+60);
    text("Training",trainingX+45,trainingY+60);
    
    textSize(30);
    text("Back",backX+15,backY+35);
    
    fill(200);
    textSize(15);
    text("Each member of StarFleet is expected\nto stay in top physical contition. These\nsimulations are to help hone your\nCombat, Weapons and Mission Training.\nRecomended: 3 programs per each Earth\nmonth",trainingX,trainingY+140);
<<<<<<< HEAD
<<<<<<< HEAD
    text("It is advised that each StarFleet member\nis to participate in the Relaxation\nprograms provided. This is to hone your\nmind and stay in top mental health. How\nfrequently you should participate in the\nprograms is to be discussed with the\ndesignated Ship Counselor",relaxationX-25,relaxationY+140);
=======
    text("It is advised that each StarFleet member\nis to participate in the Relaxation\nprograms provided. This is to hone your\nmind and stay in top mental health. How\nfrequently you should participate in the\nprograms is to be disscused with the\ndesignated Ship Counselor",relaxationX-25,relaxationY+140);
>>>>>>> 09b622ceda2afab9238b18d145f56096aef0fe54
=======
    text("It is advised that each StarFleet member\nis to participate in the Relaxation\nprograms provided. This is to hone your\nmind and stay in top mental health. How\nfrequently you should participate in the\nprograms is to be disscused with the\ndesignated Ship Counselor",relaxationX-25,relaxationY+140);
>>>>>>> 09b622ceda2afab9238b18d145f56096aef0fe54
    
    textSize(70);
    text("Choose an option",-320,-200);
  }//end render()

  
    void update() {
      if ( overTraining(trainingX + width /2 , trainingY + height /2, trainingSize, trainingSize/3) ) {
        trainingOver = true;
        relaxationOver = false;
        backOver = false;
      } else if ( overRelaxation(relaxationX + width / 2, relaxationY + height /2 , relaxationSize, relaxationSize/3) ) {
        relaxationOver = true;
        trainingOver = false;
        backOver = false;
      } else if ( overBack(backX + width / 2, backY + height /2 , backSize, backSize/2) ) {
        relaxationOver = false;
        trainingOver = false;
        backOver = true;
      } else {
        trainingOver = relaxationOver = backOver = false;
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
  
  boolean overTraining(float x, float y, float w, float h)  {
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