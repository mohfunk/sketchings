// Written by Mohammed Fahad (C) 2018
// Music by Perturbator, all rights reserved to their prospective owners

void setup() 
  {
   fullScreen(P3D);
   //size(1000,1000, P3D);
   frameRate(60);
   minim = new Minim(this);
   loadSong(snum);
   f = createFont("FuturaPT-Book", 24, true);
   wid5 = (width/10) - 10;
   smooth(4);
   for(int i = 0; i < pentnum; ++i) {
    pnt[i] = new Pentagram(3, 100); 
    pnt[i].scalPentagram(penScale[i]);
   }
  }



void draw() {
    
    int frames = 60 * 3;
    float time = (float)frameCount / frames;
    updateScore();
    background(scor[6]/20, scor[2]/50, scor[8]/20);
if (debug == true) {
   deb();
}

  //perspective(1, 1, 0.1, 100);
  camera((width/2) + scor[5]/5, (height/2) + scor[9]/60, height,  (width/2) - scor[7]/100, (height/2) - scor[4]/100, 62,  0, 1, 0);
  //rotateY(radians(60 + sin(phi) * 10));
  //rotateZ(radians(40 + sin(phi * 2) * 6));
  for(int i = 0; i < pentnum; ++i) {
    pnt[i].drawPentagram(scor,penAlpha[i], penWidth[i]);
   }

 
}
