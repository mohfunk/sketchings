void debugDraw() {
    stroke(255, 255, 255, 150);
    strokeWeight(1);
     for(int i = 0; i < width; i += pixel*scale) {
       line(i, 0, i, height); 
    }
    for(int i = 0; i < height; i += pixel*scale) {
       line(0, i, width, i); 
    } 
  
  
}
