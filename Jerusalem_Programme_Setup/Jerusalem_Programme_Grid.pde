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
