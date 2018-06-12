Head[] h = new Head[100];
void setup() {
  background(#69697C);
  fullScreen();
  //size(220, 350);
  frameRate(2);
  //noLoop();
  for(int i = 0; i < 100; ++i) {
  h[i] = new Head();
  }  
}


void draw() {
  if (debug) debugDraw();
  background(#69697C);
  int k = 0;
  for(int i = 0; i < 10; ++i) {
    for(int j = 0; j < 10; ++j) {
      h[k].drawHead(i,j);
      h[k].reset();
      k++;
    }
  }
  
  /*

  // EAR
  f//i#F2D5BF);
  rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*facewidth, (9*5*scale) + 5*scale*(faceheight/2), 5*scale, 5*scale);
  // EYES
  fill(0);
  rect( (width/2 - 5*scale*(facewidth/2)), (9*5*scale) + 5*scale*(faceheight/3), 5*scale, 5*scale);
  rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*(facewidth-2), (9*5*scale) + 5*scale*(faceheight/3), 5*scale, 5*scale);
  // EYE BROWS
  fill(#CBB29E);
  rect( (width/2 - 5*scale*(facewidth/2)), (9*5*scale) + 5*scale*(faceheight/3) - 5*scale, 5*scale, 5*scale);
  rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*(facewidth-2), (9*5*scale) + 5*scale*(faceheight/3) - 5*scale, 5*scale, 5*scale);
  // NECK
  fill(#F2D5BF);
  rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*(facewidth*0.50) , (9*5*scale) + 5*scale*(faceheight+1) - 5*scale, 5*scale, 5*scale);
  rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*(facewidth*0.50) , (9*5*scale) + 5*scale*(faceheight+2) - 5*scale, 5*scale, 5*scale);
  // Nose
  fill(#CBB29E);
  rect( (width/2 - 5*scale*((facewidth/2) -1)),  (9*5*scale)  + 5*scale*((faceheight/2) + 1), 5*scale, 5*scale);
  // Mouth
  fill(#B99E89);
  rect( (width/2 - 5*scale*((facewidth/2) -1)),  (9*5*scale)  + 5*scale*((faceheight/2) + 2), 5*scale, 5*scale);
  rect( (width/2 - 5*scale*((facewidth/2) -2)),  (9*5*scale)  + 5*scale*((faceheight/2) + 2), 5*scale, 5*scale);
  
  // HAIR
   fill(0);
   for(int i = 0; i < facewidth; ++i) {
      rect( (width/2 - 5*scale*((facewidth/2))) + i*scale*5,  (7*5*scale), 5*scale, 5*scale);
      rect( (width/2 - 5*scale*((facewidth/2))) + i*scale*5,  (8*5*scale), 5*scale, 5*scale);
   }
   rect( (width/2 - 5*scale*((facewidth/2))) + facewidth*scale*5,  (8*5*scale), 5*scale, 5*scale);
   rect( (width/2 - 5*scale*((facewidth/2))) + -1*scale*5,  (7*5*scale), 5*scale, 5*scale);
    for(int i = 0; i < faceheight/2; ++i) {
     rect( (width/2 - 5*scale*(facewidth/2)) + scale*5*facewidth,  (9*5*scale) + 5*scale*i, 5*scale, 5*scale);
   }
   */
}
