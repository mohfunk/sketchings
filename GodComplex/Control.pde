void keyPressed() {
  
  // Toggle Pause
  if(key == 'p') {
    if( s[snum].isPlaying() == true ) {
        s[snum].pause();
    } else {
        s[snum].loop();
}
  }
  
  // Restart Song
  if (key == 'r') {
    s[snum].rewind();
  }
  
  // Mute
  if (key == 'm') {
    if(s[snum].isMuted() == true) {
      s[snum].unmute();
    } else {
      s[snum].mute();
    }
  }
  
  // Switch 
  if (key == 'c') {
    s[snum].pause();
    s[snum].rewind();
    if (snum == songs - 1) { snum = 0; }
    else { snum++;}
    loadSong(snum);
}

}
