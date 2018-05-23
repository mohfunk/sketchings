// Mohammed Fahad 
// @mohfunk

int margin = 15;
int blockDrawSize = 3;
int blockRealSize = 5;
int blockW = 7;
int blockH = 10;
int arabicShift = blockW - 1; // Arabic is right to left


void setup() {
  size(800, 1130); 
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

  
void draw () {
  // for tweeking
  margin = 15;
  blockDrawSize = 3;
  blockRealSize = 5;
  blockW = 7;
  blockH = 10;
  arabicShift = blockW - 1;
  showFGrid();
  showLGrid(true);
  hamza(1, 1, 1, 1);
  hamza(2, 1, 5, 1);
  hamza(3, 1, 4, 1);
  hamza(4, 1, 4, 1);
  hamza(5, 1, 4, 8);
  hamza(6, 1, 4, 1);
  hamza(8, 1, 4, 8);
  noLoop();
  
}
