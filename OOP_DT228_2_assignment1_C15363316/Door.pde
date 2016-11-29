void Door() {
  if ( Door.isPlaying() ) {
    Door.pause();
  }
  else if ( Door.position() == Door.length() ) {
    Door.rewind();
    Door.play();
  }
  else {
    Door.play();
  } 
}