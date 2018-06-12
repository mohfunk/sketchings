void debugDraw() {
    stroke(255, 255, 255, 150);
    strokeWeight(0.1);
     for(int i = 0; i < width; i += 5*scale) {
       line(i, 0, i, height); 
    }
    for(int i = 0; i < height; i += 5*scale) {
       line(0, i, width, i); 
    } 
  
  
}
