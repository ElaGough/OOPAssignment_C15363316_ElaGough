//function to call stars
void callstars(){
  fill(random(50,255)); //randomizes colour of stars to make them flicker
  while (starList.size()>500) { //stops arrayList from getting too big
    starList.remove(0);
  }
  stars = new Stars(); //get a new star
  starList.add(stars); //add stars to arrayList
  
  for(int i =0 ; i < starList.size() ; i++){ //calling functions in class Stars
    starList.get(i).update();
    starList.get(i).render();
  }
}