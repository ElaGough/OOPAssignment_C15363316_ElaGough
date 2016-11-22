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

//function to call stars
void callstars(){
  fill(random(50,255)); //randomizes colour of stars to make them flicker
  while (starList.size()>100) { //stops arrayList from getting too big
    starList.remove(0);
  }
  stars = new Stars(); //get a new star
  starList.add(stars); //add stars to arrayList
  
  for(int i =0 ; i < starList.size() ; i++){ //calling functions in class Stars
    starList.get(i).update();
    starList.get(i).render();
  }
}

//function to call heart
void callheart(){ //calling function in class Heart
  fill(#f60a20, 200);
  heart.render();
}