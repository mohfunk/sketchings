// Written by Mohammed Fahad (C) 2018
// Music by Perturbator, all rights reserved to their prospective owners

void setup() 
  {
   fullScreen(P3D);
   frameRate(60);
   minim = new Minim(this);
   s = minim.loadFile("GC.mp3" );
   fft = new FFT(s.bufferSize(), s.sampleRate());
   s.loop(0);
   f = createFont("FuturaPT-Book", 24, true);
   wid5 = (width/10) - 10;
   smooth(4);
   pent = new Pentagram(3, 100);
   // pent.shftPentagram(-500, -500);
  }



void draw() {
    textFont(f);
    int frames = 60 * 3;
    float time = (float)frameCount / frames;
    fft.forward(s.mix);
    stroke(255);
    strokeWeight(1);
    strokeJoin(MITER);
     for(int i = 0; i < 10; ++i) {
 	      prev[i] = scor[i];
	      scor[i] = 0.00;
	    }
  for(int i = 0; i < fft.specSize()*spec[0]; i++)
  {
    scor[0] += fft.getBand(i);
  }
   if (prev[0] > scor[0]) {
    scor[0] = prev[0] - decrate[0];
  }
  
  for(int i = 0; i < 9; ++i) {
    for(int j = (int)(fft.specSize()*spec[i]); j < fft.specSize()*spec[i+1]; j++) {
      scor[i+1] += fft.getBand(j);
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

  
  pent.drawPentagram(scor);

 
}
