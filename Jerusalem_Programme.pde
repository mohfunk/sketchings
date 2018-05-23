int margin = 15;
void setup() {
  size(800, 1130); // 770(+ 30 marign) x 1100 (+ 30 margin)
  background(0);
  
}

void showFGrid() {
  
  for (int i = 15; i <= 1130; i += 100) {
    stroke(255, 30.0);
    strokeWeight(3);
    line(15, i, 785, i);
  }
   for (int j = 15; j <= 800; j += 70) {
    stroke(255, 30.0);
    strokeWeight(3);
    line(j, 15, j, 1115);
  }
}


void showLGrid(boolean full) {
  if (full) {
      for (int i = 15; i <= 1115; i += 10) {
      stroke(255, 30.0);
      strokeWeight(1);
      line(15, i, 785, i);
    }
     for (int j = 15; j <= 785; j += 10) {
      stroke(255, 30.0);
      strokeWeight(1);
      line(j, 15, j, 1115);
    }
  }
  
  
}

void hamza(int x, int y, int sx, int sy) {
   noFill();
  stroke(255);
  strokeWeight(2);
  rect(15 + (60 - (10 * (sx-1)) + (70 * (x-1))), 15 + (00 + (10 * (sy-1)) + (100 * (y-1))), 8,8);
  rect(15 + (50 - (10 * (sx-1)) + (70 * (x-1))), 15 + (00 + (10 * (sy-1)) + (100 * (y-1))), 8,8);
  rect(15 + (50 - (10 * (sx-1)) + (70 * (x-1))), 15 + (10 + (10 * (sy-1)) + (100 * (y-1))), 8,8);
  rect(15 + (40 - (10 * (sx-1)) + (70 * (x-1))), 15 + (20 + (10 * (sy-1)) + (100 * (y-1))), 8,8);
  rect(15 + (50 - (10 * (sx-1)) + (70 * (x-1))), 15 + (20 + (10 * (sy-1)) + (100 * (y-1))), 8,8);
  rect(15 + (60 - (10 * (sx-1)) + (70 * (x-1))), 15 + (20 + (10 * (sy-1)) + (100 * (y-1))), 8,8);
  
}

  
void draw () {
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
