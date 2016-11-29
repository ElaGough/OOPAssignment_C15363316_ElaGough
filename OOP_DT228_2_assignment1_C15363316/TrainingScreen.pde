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
  
  //boolean for buttons
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
    
    update();
    stroke(0);
    fill(100);
    
    //highlighting button
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
    
    //text
    fill(0);
    textSize(45);
    text("Weapons",weaponsX+40,weaponsY+60);
    text("Combat",combatX+60,combatY+60);
    text("Mission",missionX+60,missionY+60);
    
    textSize(30);
    text("Back",backX+15,backY+35);
    
    fill(200);
    textSize(15);
    text("Complete a series of hand to hand\nstyle combat routines with an AI\ntraining instructer, followed by a\nsparring session that gradualy\nincreases in difficulty.",combatX+10,combatY+140);
    text("Choose from an assorcment of\nweaponary to hone your skills in\ntarget practice. The longer the\nprogram runs, the more difficult\nit becomes.", weaponsX+10, weaponsY+140);
    text("Complete a randomised mission logged\nin passed MissionLogs. This can be\ncompleted solo or in a team.",missionX+10,missionY+140);
    
    textSize(70);
    text("Training",-150,-250);
    textSize(40);
    text("a healthy body is a healthy mind",-350,-170);
  }//end render()

  
    void update() {
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
  }//end of overWeapons()
  
  boolean overCombat(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overCombat()
  
  boolean overMission(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overMission()
  
  boolean overBack(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overBack()
  
}//end TrainingScreen