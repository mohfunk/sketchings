// Written by Mohammed Fahad (C) 2018
// Music by Perturbator, all rights reserved to their prospective owners

void setup() 
  {
    fullScreen(P3D);
  // size(1000,1000, P3D);
   frameRate(60);
   minim = new Minim(this);
   loadSong(snum);
   f = createFont("FuturaPT-Book", 24, true);
   wid5 = (width/10) - 10;
   smooth(4);
   for(int i = 0; i < pentnum; ++i) {
    rct[i] = new Rectangle((width/2), (height/2), 100, 100); 
    rct[i].scalRectangle(recScale[i]);
    rct[i].shftRectangle((-1) * (int)(rct[i].wid/2),(-1) * (int)(rct[i].hei/2));
    rct[i].scalRectangle(recScale[(int)random(0,9)], recScale[(int)random(0,9)]);
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
  
 // camera(((width/2) + scor[5]/5) * 1, ((height/2) + scor[9]/60) * 1, height * 1,
  //(width/2) - scor[7]/100, (height/2) - scor[4]/100, 62,
 // 0, 1, 0);
  //rotateX(radians(scor[3]/5 + sin(PI) * 10));
  //rotateZ(radians(40 + sin(phi * 2) * 6));
  for(int i = 0; i < pentnum; ++i) {
    rct[i].drawRectangle(scor,recAlpha[i], penWidth[i], i, i);
   }

 
}
