class InfoScreen extends ButtonColours
{
  float backX, backY;
  int backSize = 100;
  boolean backOver = false;
  int num;
  int i;
  
  
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
    
    fill(200);
    textSize(80);
    text("The Holodeck",-310,-170);
    stroke(200);
    line(-330, -150, 330, -150);
    textSize(30);
    text("The Holodeck is a simulated reality. It\ncreates artificial environments for\nrecreational or training purposes.",-320,-80); 
    textSize(20);
    text("To navagate the Holodeck you must connect to the\ninterfaces built in MentalLink. If you are a being that is\nunable to do this then implement the cursor provided. If\nyou are a being that is unable to do either option, ask a\ndesignated StarFleet officer for assistance.",-320,100);
    
    fill(0);
    textSize(30);
    text("Back",backX+15,backY+35);
    
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