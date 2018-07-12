Head[] h = new Head[100];
void setup() {
  background(#69697C);
  //fullScreen();
  size(330, 920);
  frameRate(10);
  for(int i = 0; i < 100; ++i) {
  h[i] = new Head();
  }  
}


void draw() {
  if (debug) debugDraw();
  background(#69697C);
  h[0].drawHead(0,0);
  
  /*
  int k = 0;
  for(int i = 0; i < 10; ++i) {
    for(int j = 0; j < 10; ++j) {
      h[k].drawHead(i,j);
      h[k].reset();
      k++;
    }
  }
  */
  
}

void keyPressed() {
  h[0].reset();
}
  
