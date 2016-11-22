//OOP Assignment
//DT228-2
//Ela Gough C15363316

void setup() {
  size(1000, 600);
  heart = new Heart();
  stars = new Stars();
}

Heart heart;
Stars stars;
ArrayList<Stars> starList = new ArrayList<Stars>();

void draw() {
  background(0);//background(#262526);
  translate(width/2, height/2); //translate (0,0) to centre of screen
  noStroke();
  
  callstars();
  callheart();
  
}

void callstars(){
  fill(random(50,255));
  while (starList.size()>100) {
    starList.remove(0);
  }
  stars = new Stars();
  starList.add(stars);
  
  for(int i =0 ; i < starList.size() ; i++){
    starList.get(i).update();
    starList.get(i).render();
  }
}

void callheart(){
  fill(#f60a20, 200);
  heart.render();
}