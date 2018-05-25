
void draw () {

  // for tweeking
  showFGrid();
  showLGrid(true);
  
  hamza(1, 1, 1, 1);
  hamza(2, 1, 5, 1);
  hamza(3, 1, 4, 1);
  hamza(4, 1, 4, 1);
  hamza(5, 1, 4, 8);
  hamza(6, 1, 4, 1);
  hamza(8, 1, 4, 8);
  lLine(11, 2, 4, 1, 7, 0, 1);
  hamza(11, 1, 3, 5);
  lLine(10, 2, 4, 1, 6, 0, 1);
  lLine(10, 2, 1, 7, 4, 1, 0);
  lLine(10, 1, 4, 4, 3, 0, 1);
  lLine(10, 1, 1, 7, 4, 1, 0);
  hamza(10, 1, 4, 1);
  lDot(5, 5, 4, 1);
  
  //for(int i = 1; i < 7; ++i) {
  //  lLine(i, 2, 1, 4, 7, 1, 0);
  //}

 dLine(10, 5, 1, 7, 4, 1, -1);
 tBlocksHor(6, 7, 1, 2, 1);
 tBlocksVer(1, 7, 1, 2, 1);
 tBlocksHor(9, 7, 1, 2, -1);
 tBlocksVer(3, 7, 1, 2, -1);
 
 // (11, 10) 1
 lLine(11, 10, 4, 1, 7, 0, 1);
 // (10, 10) 2
 lLine(10, 10, 6, 1, 7, 0, 1);
 lLine(10, 10, 2, 1, 4, 1, 0);
 // (9, 10) 3
 lLine(9, 10, 6, 1, 7, 0, 1);
 lLine(9, 10, 2, 2, 4, 1, 0);
 lDot(9, 10, 4, 1);
 lDot(9, 10, 2, 1);
 // (8, 10) 4
 lLine(8, 10, 2, 1, 4, 1, 0);
 lLine(8, 10, 6, 2, 2, 0, 1);
 lLine(8, 10, 2, 4, 4, 1, 0);
 lLine(8, 10, 6, 5, 2, 0, 1);
 lLine(8, 10, 2, 7, 4, 1, 0);
 // (7, 10) 5
 tBlocksHor(7, 10, 5, 2, -1);
 tBlocksVer(7, 10, 6, 5, 1);
 tBlocksHor(7, 10, 5, 6, 1);
 tBlocksVer(7, 10, 2, 5, -1);
 // ( 6, 10) 6
 lLine(6, 10, 2, 1, 7, 0, 1); // pffset by 1 on sx
 lLine(6, 10, 3, 1, 4, 1, 0); // offset by 1 on sx
 // ( 5, 10) 7
 lLine(5, 10, 6, 1, 5, 0, 1);
 lLine(5, 10, 2, 1, 5, 0, 1);
 tBlocksHor(5, 10, 5, 6, 1);
 // ( 4, 10) 8
 lLine(4, 10, 6, 3, 5, 0, 1);
 lLine(4, 10, 2, 3, 5, 0, 1);
 tBlocksHor(4, 10, 5, 2, -1);
 // (3, 10) 9
 lLine(3, 10, 3, 1, 7, 0, 1);
 lLine(3, 10, 4, 1, 2, 1, 0);
 lLine(3, 10, 5, 2, 2, 0, 1);
 lLine(3, 10, 4, 3, 1, 1, 0);
 // (2, 10) 0
 lLine(2, 10, 5, 7, 1, 1, 0);
 // (1, 10) 
 for (int i = 1; i < 10; ++i) {
   lLine(1, 10, 1, i, 7, 1, 0);
 }

 noLoop();
  
}
