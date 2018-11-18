void deb() {
    textFont(f);
    stroke(255);
    strokeWeight(1);
    strokeJoin(MITER);
for(int i = 0; i < 10; ++i) {
     line(wid5 * (i+1), height, wid5 * (i+1), height - scor[i]/2);
     text("sc: " + (int)scor[i], (wid5* (i+1)) - 150, height - 50);
  }
  
}
