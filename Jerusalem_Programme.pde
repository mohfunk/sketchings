// Mohammed Fahad 
// @mohfunk

int margin = 5;
int blockDrawSize = 7;
int blockRealSize = 10;
int blockW = 7;
int blockH = 10;
int arabicShift = blockW - 1; // Arabic is right to left


void setup() {
  size(800, 1130, P2D); 
  background(0);
  
}

void showFGrid() {
  
  for (int i = margin; i <= height; i += (blockRealSize * blockH)) {
    stroke(255, 30.0);
    strokeWeight(3);
    line(margin, i, width - margin, i);
  }
   for (int j = margin; j <= width; j += (blockRealSize * blockW)) {
    stroke(255, 30.0);
    strokeWeight(3);
    line(j, margin, j, height - margin);
  }
}


void showLGrid(boolean full) {
  if (full) {
      for (int i = margin; i <= height - margin; i += blockRealSize) {
      stroke(255, 30.0);
      strokeWeight(1);
      line(margin, i, width - margin, i);
    }
     for (int j = margin; j <= width - margin; j += blockRealSize) {
      stroke(255, 30.0);
      strokeWeight(1);
      line(j, margin, j, height - margin);
    }
  }
  
  
}

void hamza(int x, int y, int sx, int sy) {
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 1) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 2)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  
}

void lLine(int x, int y, int sx, int sy, int len, int hor, int ver) { // len = how many blocks, ori = 0 -> horizental, 1 -> vertical
  noFill();
  stroke(255);
  strokeWeight(2);
  for(int i = 0; i < len; ++i) {
    rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * i * hor)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * i * ver) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  }
  
}


void lDot(int x, int y, int sx, int sy) {
  
  rect(margin + (blockRealSize * arabicShift) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1)), margin + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1)), blockDrawSize, blockDrawSize);
  
  
}

void dLine(int x, int y, int sx, int sy, int len, float degx, float degy) {
  noFill();
  stroke(255);
  strokeWeight(2);
  for(int i = 0; i < len; ++i) {
    rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * i * degx)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * i * degy) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  }
}

// (0, -1) , (0, 1) , (-1, 0), (1, 0)

void tBlocksHor(int x, int y, int sx, int sy, int ori) {
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * -1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * ori) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * -2)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  
}

void tBlocksVer(int x, int y, int sx, int sy, int ori) {
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * ori)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * -1) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * arabicShift) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + ((blockRealSize * -2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  
}

void draw () {

  // for tweeking
  //showFGrid();
  //showLGrid(true);
  
  hamza(1, 1, 1, 1);
  hamza(2, 1, 5, 1);
  hamza(3, 1, 4, 1);
  hamza(4, 1, 4, 1);
  hamza(5, 1, 4, 8);
  hamza(6, 1, 4, 1);
  hamza(8, 1, 4, 8);
  lLine(11, 2, 4, 1, 7, 0, 1);
  hamza(11, 1, 3, 5);
  lLine(10, 2, 4, 1, 6, 0, 1);
  lLine(10, 2, 1, 7, 4, 1, 0);
  lLine(10, 1, 4, 4, 3, 0, 1);
  lLine(10, 1, 1, 7, 4, 1, 0);
  hamza(10, 1, 4, 1);
  lDot(5, 5, 4, 1);
  
  //for(int i = 1; i < 7; ++i) {
  //  lLine(i, 2, 1, 4, 7, 1, 0);
  //}

 dLine(10, 5, 1, 7, 4, 1, -1);
 tBlocksHor(6, 7, 1, 2, 1);
 tBlocksVer(1, 7, 1, 2, 1);
 tBlocksHor(9, 7, 1, 2, -1);
 tBlocksVer(3, 7, 1, 2, -1);
 
 // (11, 10) 1
 lLine(11, 10, 4, 1, 7, 0, 1);
 // (10, 10) 2
 lLine(10, 10, 6, 1, 7, 0, 1);
 lLine(10, 10, 2, 1, 4, 1, 0);
 // (9, 10) 3
 lLine(9, 10, 6, 1, 7, 0, 1);
 lLine(9, 10, 2, 2, 4, 1, 0);
 lDot(9, 10, 4, 1);
 lDot(9, 10, 2, 1);
 // (8, 10) 4
 lLine(8, 10, 2, 1, 4, 1, 0);
 lLine(8, 10, 6, 2, 2, 0, 1);
 lLine(8, 10, 2, 4, 4, 1, 0);
 lLine(8, 10, 6, 5, 2, 0, 1);
 lLine(8, 10, 2, 7, 4, 1, 0);
 // (7, 10) 5
 tBlocksHor(7, 10, 5, 2, -1);
 tBlocksVer(7, 10, 6, 5, 1);
 tBlocksHor(7, 10, 5, 6, 1);
 tBlocksVer(7, 10, 2, 5, -1);
 // ( 6, 10) 6
 lLine(6, 10, 2, 1, 7, 0, 1); // pffset by 1 on sx
 lLine(6, 10, 3, 1, 4, 1, 0); // offset by 1 on sx
 // ( 5, 10) 7
 lLine(5, 10, 6, 1, 5, 0, 1);
 lLine(5, 10, 2, 1, 5, 0, 1);
 tBlocksHor(5, 10, 5, 6, 1);
 // ( 4, 10) 8
 lLine(4, 10, 6, 3, 5, 0, 1);
 lLine(4, 10, 2, 3, 5, 0, 1);
 tBlocksHor(4, 10, 5, 2, -1);
 // (3, 10) 9
 lLine(3, 10, 3, 1, 7, 0, 1);
 lLine(3, 10, 4, 1, 2, 1, 0);
 lLine(3, 10, 5, 2, 2, 0, 1);
 lLine(3, 10, 4, 3, 1, 1, 0);
 // (2, 10) 0
 lLine(2, 10, 5, 7, 1, 1, 0);
 // (1, 10) 
 for (int i = 1; i < 10; ++i) {
   lLine(1, 10, 1, i, 7, 1, 0);
 }

 noLoop();
  
}
