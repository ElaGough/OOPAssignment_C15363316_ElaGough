//OOP Assignment - Holodeck UI
//DT228-2
//Ela Gough C15363316

//inport library for music
import ddf.minim.*;

Minim minim;
AudioPlayer StarTrekMelody;
AudioPlayer Door;

//declares classes
Heart heart; //declares heart
Stars stars; //declares stars
StartScreen start_screen;
TrainingOrRelaxationScreen training_or_relaxation_screen;
TrainingScreen training_screen;
RelaxationScreen relaxation_screen;
CombatScreen combat_screen;
WeaponsScreen weapons_screen;
MissionScreen mission_screen;
BakuScreen baku_screen;
RisaScreen risa_screen;
EdenScreen eden_screen;
InfoScreen info_screen;

//used to navigate sscreens
int screenID = 1;

//array list for stars created so they are infinetly generated
ArrayList<Stars> starList = new ArrayList<Stars>(); 

//setup
void setup() {
  //fullScreen();
  size(1000, 600);
  
  //setting font
  PFont monta;
  monta = createFont("Montalban Condensed Bold.otf",100);
  textFont(monta);
  
  //background sound looping
  minim = new Minim(this);
  StarTrekMelody = minim.loadFile("Star Trek- The Next Generation theme (HQ).mp3",2048);
  if ( StarTrekMelody == null) {
    println("Didn't get StarTrekMelody");
  }
  StarTrekMelody.loop();
  
  //door sound
  minim = new Minim(this);
  Door = minim.loadFile("Car Door Close Outside-SoundBible.com-1122981889.wav",2048);
  if ( Door == null) {
    println("Didn't get Door");
  }
  
  //initilasing classes
  heart = new Heart(); //initilases heart
  stars = new Stars(); //initilases stars
  start_screen = new StartScreen();
  training_or_relaxation_screen = new TrainingOrRelaxationScreen();
  training_screen = new TrainingScreen();
  relaxation_screen = new RelaxationScreen();
  combat_screen = new CombatScreen();
  weapons_screen = new WeaponsScreen();
  mission_screen = new MissionScreen();
  baku_screen = new BakuScreen();
  risa_screen = new RisaScreen();
  eden_screen = new EdenScreen();
  info_screen = new InfoScreen();
  
}

//draw
void draw() {
  background(20);
  //background(0);
  translate (width/2, height/2) ; //translate (0,0) to centre of screen
  noStroke();
  
  //cleaner code in draw to call functions:
  callstars();
  callheart();
  
  //start_screen
  if (screenID == 1 ) { 
    start_screen.render();
    //println("screen1 working");
  } 
  //training_or_relaxation_screen
  if (screenID == 2) { 
    training_or_relaxation_screen.render();
    //println("screen2 working");
  } 
  //training_screen
  if (screenID == 3)
  {
    training_screen.render();
    //println("training_screen working");
  }
  //relaxation_screen
  if (screenID == 4)
  {
    relaxation_screen.render();
    //println("training_screen working");
  }
  //
  if (screenID == 5)
  {
    combat_screen.render();
  }
  if (screenID == 6)
  {
    weapons_screen.render();
  }
  if (screenID == 7)
  {
    mission_screen.render();
  }
  if (screenID == 8)
  {
    risa_screen.render();
  }
  if (screenID == 9)
  {
    baku_screen.render();
  }
  if (screenID == 10)
  {
    eden_screen.render();
  }
  if (screenID == 11)
  {
    info_screen.render();
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
    if(start_screen.infoOver == true) {
      screenID = 11;
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
    //back button to start_screen
    if (training_or_relaxation_screen.backOver == true) {
      screenID = 1;
    }
  }
    
  //training_screen
  else if (screenID == 3) {
    //weapons button
    if (training_screen.weaponsOver == true) {
      screenID = 6;
      Door();
    }
    //combat button
    if (training_screen.combatOver == true) {
      screenID = 5;
      Door();
    }
    //mmission button
    if (training_screen.missionOver == true) {
      screenID = 7;
      Door();
    }
    //back button to training_or_relaxation_screen
    if (training_screen.backOver == true) {
      screenID = 2;
    }
  }
  
  //relaxation_screen
  else if (screenID == 4) {
    if (relaxation_screen.risaOver == true) {
      screenID = 8;
      Door();
    }
    if (relaxation_screen.bakuOver == true) {
      screenID = 9;
      Door();
    }
    if (relaxation_screen.edenOver == true){
      screenID = 10;
      Door();
    }
    //back button to training_or_relaxation_screen
    if (relaxation_screen.backOver == true) {
      screenID = 2;
    }
  }
  
  //combat_screen
  else if (screenID == 5)
  {
    //back to training_screen
    if (combat_screen.backOver == true) {
      screenID = 3;
    }
  }
  
  //weapons_screen
  else if (screenID == 6)
  {
    //back to training_screen
    if (weapons_screen.backOver == true) {
      screenID = 3;
    }
  }
  
  //mission_screen
  else if (screenID == 7)
  {
    //back to training_screen
    if (mission_screen.backOver == true) {
      screenID = 3;
    }
  }
  
  //risa_screen
  else if (screenID == 8)
  {
    //back to relaxation_screen
    if (risa_screen.backOver == true) {
      screenID = 4;
    }
  }
  
  //baku_screen
  else if (screenID == 9)
  {
    //back to relaxation_screen
    if (baku_screen.backOver == true) {
      screenID = 4;
    }
  }
  
  //eden_screen
  else if (screenID == 10)
  {
    //back to relaxation_screen
    if (eden_screen.backOver == true) {
      screenID = 4;
    }
  }
  
  //info_screen
  else if (screenID == 11)
  {
    //back to start_screen
    if (info_screen.backOver == true) {
      screenID = 1;
    }
  }
  
 }//end mousePressed()