void showCGrid() {
  
  for (int i = m; i <= height; i += (brs * bh)) {
    stroke(255, 30.0);
    strokeWeight(3);
    line(m, i, width - m, i);
  }
   for (int j = m; j <= width; j += (brs * bw)) {
    stroke(255, 30.0);
    strokeWeight(3);
    line(j, m, j, height - m);
  }
}


void showLGrid() {
      for (int i = m; i <= height - m; i += brs) {
      stroke(255, 30.0);
      strokeWeight(1);
      line(m, i, width - m, i);
    }
     for (int j = m; j <= width - m; j += brs) {
      stroke(255, 30.0);
      strokeWeight(1);
      line(j, m, j, height - m);
    } 
}
