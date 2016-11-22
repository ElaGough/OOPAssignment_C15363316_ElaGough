//OOP Assignment
//DT228-2
//Ela Gough C15363316

void setup() {
  size(1000, 600);
  heart = new Heart(); //initilases heart
  stars = new Stars(); //initilases stars
}

Heart heart; //declares heart
Stars stars; //declares stars

ArrayList<Stars> starList = new ArrayList<Stars>(); //array list for stars created so they are infinetly generated

void draw() {
  background(25);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  
  //cleaner code in draw to call functions:
  callstars();
  callheart();
}