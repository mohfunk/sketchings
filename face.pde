void setup() {
  background(#69697C);
  size(330, 1380);
  noLoop();
}


void draw() {
  if (debug) debugDraw();
  
  noStroke();
  int facewidth = 4;
  int faceheight = 7;
  // FACE MASK
  for(int i = 0; i < facewidth; ++i) {
    for(int j = 0; j < faceheight; ++j) {
      fill(#F2D5BF);
      rect( ((width/2 - 5*scale*(facewidth/2)) + 5*scale*i) , (9*5*scale) + 5*scale*j, 5*scale, 5*scale);
    }
  }
  // EAR
  fill(#F2D5BF);
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
}
