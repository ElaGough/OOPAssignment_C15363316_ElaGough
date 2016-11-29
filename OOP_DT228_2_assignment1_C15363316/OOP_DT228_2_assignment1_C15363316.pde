//OOP Assignment - Holodeck UI
//DT228-2
//Ela Gough C15363316

import ddf.minim.*;

Minim minim;
AudioPlayer StarTrekMelody;

Heart heart; //declares heart
Stars stars; //declares stars
StartScreen start_screen;
TrainingOrRelaxationScreen training_or_relaxation_screen;
TrainingScreen training_screen;
RelaxationScreen relaxation_screen;

int screenID = 1;

ArrayList<Stars> starList = new ArrayList<Stars>(); //array list for stars created so they are infinetly generated

//setup
void setup() {
  size(1000, 600);
  
  //setting font
  PFont monta;
  monta = createFont("Montalban Condensed Bold.otf",100);
  textFont(monta);
  
  //background sound looping
  minim = new Minim(this);
  StarTrekMelody = minim.loadFile("Star Trek- The Next Generation theme (HQ).mp3",2048);
  StarTrekMelody.loop();
  
  //initilasing classes
  heart = new Heart(); //initilases heart
  stars = new Stars(); //initilases stars
  start_screen = new StartScreen();
  training_or_relaxation_screen = new TrainingOrRelaxationScreen();
  training_screen = new TrainingScreen();
  relaxation_screen = new RelaxationScreen();
}

//draw
void draw() {
  background(20);
  //background(255);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  
  //cleaner code in draw to call functions:
  callstars();
  callheart();
  
  //screen1
  if (screenID == 1 ) { 
    start_screen.render();
    //println("screen1 working");
  } 
  //screen2
  if (screenID == 2) { 
    training_or_relaxation_screen.render();
    //println("screen2 working");
  } 
  //screen_training
  if (screenID == 3)
  {
    training_screen.render();
    //println("training_screen working");
  }
  //screen_training
  if (screenID == 4)
  {
    relaxation_screen.render();
    //println("training_screen working");
  }
}


//mousePressed
void mousePressed() {
  //start_screen
  //end button
  if (screenID == 1) {
    if(start_screen.endOver == true) {
      System.exit(0);
    }
    if(start_screen.startOver == true) {
      screenID = 2;
    }
  }

  //training_or_relaxation_screen
  else if (screenID == 2) {
    //training button
    if (training_or_relaxation_screen.trainingOver == true) {
      screenID = 3;
    }
    //relaxation button
    if (training_or_relaxation_screen.relaxationOver == true) {
      screenID = 4;
    }
    //back button to screen 1
    if (training_or_relaxation_screen.backOver == true) {
      screenID = 1;
    }
  }
    
  //training_screen
  else if (screenID == 3) {
    //weapons button
    if (training_screen.weaponsOver == true) {
      screenID = 5;
    }
    //combat button
    if (training_screen.combatOver == true) {
      screenID = 6;
    }
    //mmission button
    if (training_screen.missionOver == true) {
      screenID = 7;
    }
    //back button to screen 2
    if (training_screen.backOver == true) {
      screenID = 2;
    }
  }
  
  //relaxation_screen
  else if (screenID == 4) {
    if (relaxation_screen.weaponsOver == true) {
      screenID = 8;
    }
    if (relaxation_screen.combatOver == true) {
      screenID = 9;
    }
    if (relaxation_screen.missionOver == true){
      screenID = 10;
    }
    //back button to screen 2
    if (relaxation_screen.backOver == true) {
      screenID = 2;
    }
  }
  
 }//end mousePressed()