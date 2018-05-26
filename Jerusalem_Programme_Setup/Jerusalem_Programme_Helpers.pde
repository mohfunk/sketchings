
void hamza(int x, int y, int sx, int sy) {
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize +((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize +((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize +((blockRealSize * 1) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 2)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize +((blockRealSize * 2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize +((blockRealSize * 2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize +((blockRealSize * 2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  
}

void lLine(int x, int y, int sx, int sy, int len, int hor, int ver) { // len = how many blocks, ori = 0 -> horizental, 1 -> vertical
  noFill();
  stroke(255);
  strokeWeight(2);
  for(int i = 0; i < len; ++i) {
    rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * i * hor)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * i * ver) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  }
  
}


void lDot(int x, int y, int sx, int sy) {
  
  rect(margin + (blockRealSize * (arabicShift - 1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1)), margin + blockRealSize +  (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1)), blockDrawSize, blockDrawSize);
  
  
}

void dLine(int x, int y, int sx, int sy, int len, float degx, float degy) {
  noFill();
  stroke(255);
  strokeWeight(2);
  for(int i = 0; i < len; ++i) {
    rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * i * degx)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * i * degy) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  }
}

// (0, -1) , (0, 1) , (-1, 0), (1, 0)

void tBlocksHor(int x, int y, int sx, int sy, int ori) {
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin  + blockRealSize + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * -1)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * ori) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * -2)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  
}

void tBlocksVer(int x, int y, int sx, int sy, int ori) {
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * 0) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * ori)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * -1) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  rect(margin + (((blockRealSize * (arabicShift - 1)) - (blockRealSize * 0)) - (blockRealSize * (sx-1)) + ((blockRealSize * blockW) * (x-1))), margin + blockRealSize + ((blockRealSize * -2) + (blockRealSize * (sy-1)) + ((blockRealSize * blockH) * (y-1))), blockDrawSize, blockDrawSize);
  
}
