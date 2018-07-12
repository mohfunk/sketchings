class Head {
  int x, y, wid, hei;
  int eary;
  int r, g, b;
  int eyey;
  int reyex;
  int leyex;
  int eyedistance;
  int neckWid;
  int neckHei;
  int nosey;
  int mouthy;
  Head() {
    this.x = 0;
    this.y = 0;
    this.reset();
    
  }
  
  void reset() {
    int c = (int)random(0,23);
    this.r = skinTr[c];
    this.g = skinTg[c];
    this.b = skinTb[c];
    float wei_seed = random(1);
    if (wei_seed < 0.6) { this.wid = 4; this.eyedistance = 2; this.neckWid = 2;}
    if (wei_seed >= 0.6 && wei_seed < 0.9) { this.wid = 5; this.eyedistance = 3; this.neckWid = (int)random(2,3);}
    if (wei_seed >= 0.9 && wei_seed < 1.0) { this.wid = 6; this.eyedistance = 3; this.neckWid = (int)random(3,4);}
    float hei_seed = random(1);
    if (hei_seed < 0.6) { this.hei = 7; }
    if (hei_seed >= 0.6 && hei_seed < 0.9) { this.hei = 8; }
    if (hei_seed >= 0.9 && hei_seed < 1.0) { this.hei = 9; }
    this.neckHei = (int)random(1,5);
    this.eary = (int)random((hei/2)-1,(hei/2)+1);
    this.eyey = (int)map(hei, 6, 9, 2,4);
    this.reyex = 0;
    this.leyex = eyedistance;
    this.nosey = eyey + (int)random(1.5,2.5);
    this.mouthy = nosey + (int)random(1.5,2.5);
  }
  
  void localDraw(int x, int y, int sx, int sy) {
    rect(pixel*scale + cellWid*pixel*scale*x*margin  + sx*pixel*scale, pixel*scale + cellHei*pixel*scale*y*margin + sy*pixel*scale, pixel*scale, pixel*scale);
  }
  
  void drawHead(int x, int y) {
    this.x = x;
    this.y = y;
     noStroke();
      // FACE MASK
      for(int i = 0; i < wid; ++i) {
        for(int j = 0; j < hei; ++j) {
          fill(this.r,this.g,this.b);
          localDraw(x,y,i,j);
        }
      }
      // EAR
      fill(this.r-10,this.g-10,this.b-10);
      localDraw(x, y, wid, eary);

       // EYES
       
       fill(0);
       localDraw(x,y,reyex, eyey);
       localDraw(x,y,leyex, eyey);
       
       fill(this.r-10, this.g-10, this.b-10);
       for(int i = 0; i < this.wid-1; ++i) {
         localDraw(x, y, reyex+1+i, eyey-1 );
       }
        fill(this.r-20, this.g-20, this.b-20);
        localDraw(x, y, reyex, eyey-1 );
        localDraw(x, y, leyex, eyey-1 );

  // NECK
        fill(this.r-10,this.g-10,this.b-10);
        for(int i = 0; i < this.neckWid; ++i) {
          for(int j = 0; j < this.neckHei; ++j) {
            localDraw(x, y, (this.wid/2)+i, this.hei + j);
          }
        }

  // Nose
  fill(this.r-20, this.g-20, this.b-20);
  localDraw(x, y, reyex+1, nosey);
 
  // Mouth
   fill(this.r-30, this.g-30, this.b-30);
   localDraw(x, y, reyex+1, mouthy );
   localDraw(x, y, reyex+2, mouthy );
  // HAIR
   fill(0);
   for(int i = 0; i < this.wid; ++i) {
      localDraw( x, y, i, 0);
      localDraw( x, y, i, -1);
      if ( i < eary) localDraw( x, y, this.wid, i);
   }
      /*
   for(int i = 0; i < this.wid-1; ++i) {
      if (random(1) > 0.3) {
        localDraw( x, y, i, eary+2);
        if (random(1) > 0.6) {
          localDraw( x, y, -1, this.hei-2);
          localDraw( x, y, this.wid-1, this.hei-2);
        }
      }
   }

   rect( (width/2 - 5*scale*((facewidth/2))) + facewidth*scale*5,  (8*5*scale), 5*scale, 5*scale);
   rect( (width/2 - 5*scale*((facewidth/2))) + -1*scale*5,  (7*5*scale), 5*scale, 5*scale);
    for(int i = 0; i < faceheight/2; ++i) {
     rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*facewidth,  (9*5*scale) + 5*scale*i, 5*scale, 5*scale);
    }
    */
    
    
    
  }
    
}
