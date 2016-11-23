//OOP Assignment - Holla Desk
//DT228-2
//Ela Gough C15363316

void setup() {
  size(1000, 600);
  heart = new Heart(); //initilases heart
  stars = new Stars(); //initilases stars
  startscreen = new StartScreen();
}

Heart heart; //declares heart
Stars stars; //declares stars
StartScreen startscreen;

boolean screen1 = true; //StartScreen
boolean screen2 = false; //TrainingOrRelaxationScreen

ArrayList<Stars> starList = new ArrayList<Stars>(); //array list for stars created so they are infinetly generated

void draw() {
  background(25);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  
  //cleaner code in draw to call functions:
  callstars();
  callheart();
  
  if (screen1 == true) {
    startscreen.render();
  } 
  if (screen2 == true) {
    
  }
}