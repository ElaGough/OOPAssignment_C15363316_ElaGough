//OOP Assignment - Holla Desk
//DT228-2
//Ela Gough C15363316

void setup() {
  size(1000, 600);
  
  //setting font
  PFont monta;
  monta = createFont("Montalban Condensed Bold.otf",100);
  textFont(monta);
  
  heart = new Heart(); //initilases heart
  stars = new Stars(); //initilases stars
  start_screen = new StartScreen();
}

Heart heart; //declares heart
Stars stars; //declares stars
StartScreen start_screen;

boolean screen1 = true; //StartScreen
boolean screen2 = false; //TrainingOrRelaxationScreen

ArrayList<Stars> starList = new ArrayList<Stars>(); //array list for stars created so they are infinetly generated

void draw() {
  background(20);
  //background(255);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  
  //cleaner code in draw to call functions:
  callstars();
  callheart();
  
  if (screen1 == true) {
    start_screen.render();
  } 
  if (screen2 == true) {
    
  }
}

void mousePressed() {
 if (start_screen.endOver == true) {
      System.exit(0);
    }
    if (start_screen.startOver == true) {
      screen1 = false;
      screen2 = true;
    }
 }//end mousePressed()