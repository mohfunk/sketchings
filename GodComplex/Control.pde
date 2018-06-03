void keyPressed() {
  if(key == 'p') {
    if( s.isPlaying() == true ) {
        s.pause();
    } else {
        s.loop();
      
}
  }
  
  if (key == 'r') {
    s.rewind();
  }
  if (key == 'm') {
    if(s.isMuted() == true) {
      s.unmute();
    } else {
      s.mute();
    }
  }
}
