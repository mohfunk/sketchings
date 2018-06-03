class Pentagram {
 
  float l, len, a, b;
  float[] xPoints;
  float[] yPoints;

  Pentagram(int portion, int margin) {
     this.l = width/portion;
     this.len = l - (2 * margin);
     this.b = len/q;
     this.a = phi * b;
     this.xPoints = new float[5];
     this.yPoints = new float[5];
     // Point A
     this.xPoints[0] = l + margin;
     this.yPoints[0] = height/(portion - 1);
     // Point B
     this.xPoints[1] = (2 * l) - margin;
     this.yPoints[1] = this.yPoints[0];
     // Point H
     this.xPoints[2] = this.xPoints[0] + (len/2);
     this.yPoints[2] = this.yPoints[0] + a;
     // Point C
     this.xPoints[3] = this.xPoints[2] + b;
     this.yPoints[3] = this.yPoints[0] - a - b;
     // Point D
     this.xPoints[4] = this.xPoints[2] - b;
     this.yPoints[4] = this.yPoints[3];
  }
  
  void shftPentagram(int x, int y) {
    for(int i = 0; i < 5; ++i) {
      this.xPoints[i] += x;
      this.yPoints[i] += y;
    }
    
  }
  
  
  void drawPentagram(float[] arr) {
     strokeWeight( (int)arr[0]/100);
     // A -> B
     stroke(random(1,255), 70, (int)arr[0], (int)arr[2]/10);
     line(this.xPoints[0], this.yPoints[0], this.xPoints[1], this.yPoints[1]);
     // B -> D
     stroke(random(1,255), 70, (int)arr[4], (int)arr[1]/10);
     line(this.xPoints[1], this.yPoints[1], this.xPoints[4], this.yPoints[4]);
     // D -> H
     stroke(random(1,255), 70, (int)arr[3], (int)arr[2]/10);
     line(this.xPoints[4], this.yPoints[4], this.xPoints[2], this.yPoints[2]);
     // H -> C
     stroke(random(1,255), 70, (int)arr[2], (int)arr[5]/10);
     line(this.xPoints[2], this.yPoints[2], this.xPoints[3], this.yPoints[3]);
     // C -> A
     stroke(random(1,255), 70, (int)arr[1], (int)arr[3]/10);
     line(this.xPoints[3], this.yPoints[3], this.xPoints[0], this.yPoints[0]);
    
  }
  
  
}
