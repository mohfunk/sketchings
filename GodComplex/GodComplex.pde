// Written by Mohammed Fahad (C) 2018
// Music by Perturbator, all rights reserved to their prospective owners

void setup() 
  {
   fullScreen(P3D);
   frameRate(60);
   minim = new Minim(this);
   loadSong(snum);
   f = createFont("FuturaPT-Book", 24, true);
   wid5 = (width/10) - 10;
   smooth(4);
   pent = new Pentagram(3, 100);
   pent1 = new Pentagram(3, 100);
   pent2 = new Pentagram(3, 100);
   pent3 = new Pentagram(3, 100);
   pent4 = new Pentagram(3, 100);
   pent5 = new Pentagram(3, 100);
   pent2.scalPentagram(10);
   pent3.scalPentagram((int)(30));
   pent4.scalPentagram((int)(100));
  }



void draw() {
    textFont(f);
    int frames = 60 * 3;
    float time = (float)frameCount / frames;
    fft[snum].forward(s[snum].mix);
    stroke(255);
    strokeWeight(1);
    strokeJoin(MITER);
     for(int i = 0; i < 10; ++i) {
 	      prev[i] = scor[i];
	      scor[i] = 0.00;
	    }
  for(int i = 0; i < fft[snum].specSize()*spec[0]; i++)
  {
    scor[0] += fft[snum].getBand(i);
  }
   if (prev[0] > scor[0]) {
    scor[0] = prev[0] - decrate[0];
  }
  
  for(int i = 0; i < 9; ++i) {
    for(int j = (int)(fft[snum].specSize()*spec[i]); j < fft[snum].specSize()*spec[i+1]; j++) {
      scor[i+1] += fft[snum].getBand(j);
    }
        if (prev[i+1] > scor[i+1]) {
    scor[i+1] = prev[i+1] - decrate[i+1];
  }
  }
    
    background(scor[6]/20, scor[2]/50, scor[8]/20);
if (debug == true) {
   for(int i = 0; i < 10; ++i) {
     line(wid5 * (i+1), height, wid5 * (i+1), height - scor[i]/2);
     text("sc: " + (int)scor[i], (wid5* (i+1)) - 150, height - 50);
  }
}

  
  pent.drawPentagram(scor, 5, 0);
  pent2.drawPentagram(scor, 40, 6);
  pent3.drawPentagram(scor, 50, 8);
  pent4.drawPentagram(scor, 70, 7);

 
}
