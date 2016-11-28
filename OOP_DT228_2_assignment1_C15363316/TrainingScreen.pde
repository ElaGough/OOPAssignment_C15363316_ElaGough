class TrainingScreen extends ButtonColours
{
  float weaponsX, weaponsY;      // Position of start button
  float combatX, combatY;      // Position of end button
  float missionX, missionY;      // Position of start button
  float backX, backY;
  int weaponsSize = 300;     // Diameter of weapons button
  int combatSize = 300;     // Diameter of combat button
  int missionSize = 300;     // Diameter of combat button
  int backSize = 100;
  
  boolean weaponsOver = false;
  boolean combatOver = false;
  boolean missionOver = false;
  boolean backOver = false;
  
  void render()
  {
    backOver = false;
    weaponsX = -150;
    weaponsY = -150;
    combatX = -460;
    combatY = -150;
    missionX = 160;
    missionY = -150;
    backX = 390;
    backY = 240;
    
    update(mouseX, mouseY);
    stroke(0);
    fill(100);
    
    if (weaponsOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(weaponsX,weaponsY,weaponsSize,100,40);  //rect(x1,y1,width,height,corners_ratio);
    
    if (combatOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(combatX,combatY,combatSize,100,40);
    
    if (missionOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(missionX,missionY,missionSize,100,40);
    
    if (backOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(backX,backY,backSize,50,40);
    
    fill(0);
    textSize(45);
    text("Weapons",weaponsX+40,weaponsY+60);
    text("Combat",combatX+60,combatY+60);
    text("Mission",missionX+60,missionY+60);
    
    textSize(30);
    text("Back",backX+15,backY+35);
    
    fill(200);
    textSize(70);
    text("Training",-150,-250);
    textSize(40);
    text("a healthy body is a healthy mind",-340,-170);
  }//end render()

  
    void update(float x, float y) {
      if ( overCombat(combatX + width /2 , combatY + height /2, combatSize, combatSize/3) ) {
        combatOver = true;
        weaponsOver = false;
        missionOver = false;
        backOver = false;
      } else if ( overWeapons(weaponsX + width / 2, weaponsY + height /2 , weaponsSize, weaponsSize/3) ) {
        weaponsOver = true;
        combatOver = false;
        missionOver = false;
        backOver = false;
      } else if ( overMission(missionX + width / 2, missionY + height /2 , missionSize, missionSize/3) ) {
        weaponsOver = false;
        combatOver = false;
        missionOver = true;
        backOver = false;
      } else if ( overBack(backX + width / 2, backY + height /2 , backSize, backSize/2) ) {
        weaponsOver = false;
        combatOver = false;
        missionOver = false;
        backOver = true;
      } else {
        combatOver = weaponsOver = missionOver = backOver = false;
      }
    }//end update()

  
  
  //checking to see if mouse is at buttons
  boolean overWeapons(float x, float y, float w, float h) {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overStart()
  
  boolean overCombat(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overEnd()
  
  boolean overMission(float x, float y, float w, float h)  {
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