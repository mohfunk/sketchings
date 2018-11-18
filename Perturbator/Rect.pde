class Rectangle {
 
  float ax, ay, hei, wid;
  int portion, margin;

  Rectangle(int x, int y, int h, int w) {
     this.ax  = x;
     this.ay  = y;
     this.hei = h;
     this.wid = w;
     
  }
  
  void shftRectangle(int x, int y) {
      this.ax += x;
      this.ay += y;
    }
    
  void scalRectangle(float factor) {
      this.hei *= factor;
      this.wid *= factor;
  }
  void scalRectangle(float xfactor, float yfactor) {
      this.hei *= xfactor;
      this.wid *= yfactor;
  }
  
  void drawRectangle(float[] arr, int alpha, int weight, int i, int j) {
   // if ( weight >= 7) {
    // strokeWeight( (int)arr[weight]/30);
   // } else {
    // strokeWeight( (int)arr[weight]/50);
   // }
    /*
     // A -> B
     stroke(random(1,255), 70, (int)arr[1], (int)arr[1]/alpha);
     line(this.ax, this.ay, this.ax + this.wid, this.ay);
     // B -> C
     stroke(random(1,255), 70, (int)arr[2], (int)arr[3]/alpha);
     line(this.ax + this.wid, this.ay, this.ax + this.wid, this.ay + this.hei);
     // C -> D
     stroke(random(1,255), 70, (int)arr[5], (int)arr[7]/alpha);
     line(this.ax + this.wid, this.ay + this.hei, this.ax, this.ay + this.hei);
     // D -> A
     //stroke(random(1,255), 70, (int)arr[4], (int)arr[3]/alpha);
     //line(this.ax, this.ay + this.hei, this.ax, this.ay);
     */
     noStroke();
     fill(random(1,255), 70, (int)arr[i]/alpha, (int)arr[j]/alpha);
     rect(this.ax, this.ay, this.hei, this.wid);
  }
  
  
  
  
}
