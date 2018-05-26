
void draw () {

  
  // for tweeking
   //showCGrid();
   //showLGrid();
   
  /* Line 1 */ 
  //1
  hamza(11, 1, 3, 5);
  //2
  verLine(10, 1, 4, 4, 3);
  horLine(10, 1, 1, 7, 4);
  hamza(10, 1, 4, 1);
  //3
  horLine(9, 1, 1, 7, 3);
  hamza(9, 1, 4, 8);
  verLine(9, 1, 4, 1, 6);
  //4
  verLine(8, 1, 4, 3, 5);
  horLine(8, 1, 2, 1, 5);
  //5
  horLine(7, 1, 2, 1, 6);
  verLine(7, 1, 4, 3, 5);
  horLine(7, 1, 1, 7, 3);
  //6
  hamza(6, 1, 4, 1);
  verLine(6, 1, 4, 4, 4);
  //7
  verLine(5, 1, 4, 1, 7);
  hamza(5, 1, 4, 8);
  //8
  hamza(4, 1, 4, 1);
  horLine(4, 1, 1, 7, 7);
  verLine(4, 1, 1, 5, 2);
  //9
  hamza(3, 1, 4, 1);
  horLine(3, 1, 1, 7, 7);
  verLine(3, 1, 4, 5, 2);
  //10
  hamza(2, 1, 5, 1);
  ya(2, 1);
  horLine(2, 1, 1, 10, 2);
  //11
  hamza(1, 1, 1, 1);
  wa(1,1);
  
  
  /* Line 2 */ 
   // partial
   for(int i = 8; i >= 1; --i) {
    horLine(i, 2, 1, 7, 7);
  }
   for(int i = 8; i >= 1; --i) {
    horLine(i, 2, 1, 7, 7);
  }
     for(int i = 5; i > 2; --i) {
       block(i, 2, 3, 3);
       block(i, 2, 5, 3);
  }
     for(int i = 8; i > 5; --i) {
       block(i, 2, 4, 9);
  }


  
  
  //1
  verLine(11, 2, 4, 1, 7);
  //2
  verLine(10, 2, 4, 1, 6);
  horLine(10, 2, 1, 7, 4);
  //3
  ya(9,2);  
  //4
  verLine(8, 2, 1, 5, 2);
  //5
  verLine(7, 2, 4, 5, 2);
  //6
  verLine(6, 2, 1, 5, 2);
  verLine(6, 2, 7, 5, 2);
  //7
  verLine(5, 2, 1, 5, 2);
  //8
  verLine(4, 2, 4, 5, 2);
  //9
  verLine(3, 2, 1, 5, 2);
  verLine(3, 2, 7, 5, 2);
  //10
  verLine(2,2,2,1,6);
  diaLine(2,2,3,2,5,1);
  block(2, 2, 5, 1);
  block(2, 2, 7, 1);
  //11
  verLine(1, 2, 1, 5, 2);
  verLine(1, 2, 7, 5, 2);
  zHorLine(1,2,3,3,-1);
  
    /* Line 3 */
   for(int i = 11; i >= 10; --i) {
    horLine(i, 3, 1, 7, 7);
  }
  
  verLine(11, 3, 4, 5, 2);
  zHorLine(10,3,3,3,-1);
  //6
  verLine(10, 3, 1, 5, 2);
  verLine(10, 3, 7, 5, 2);
  zHorLine(11,3,3,3,-1);
    ha1(2,3);
    block(2, 3, 5, 1);
    ha2(1,3);
    block(1, 3, 5, 1);
    ha3(3,3);
    block(3, 3, 4, 3);
    
    ha1(5,3);
    ha2(4,3);
    ha3(6,3);
    
    ha1(8,3);
    block(8, 3, 4, 7);
    ha2(7,3);
    block(7, 3, 4, 7);
    ha3(9,3);
    block(9, 3, 4, 9);
/*
    // 5
 
  // 4

  // 3

  
        // 5-> 1 partial
   for(int i = 6; i > 2; --i) {
    lLine(i, 5, 1, 7, 7, 1, 0);
  }
  
      // 5-> 1 partial
   for(int i = 7; i >= 1; --i) {
    lLine(i, 6, 1, 7, 7, 1, 0);
  }
          // 5-> 1 partial
   for(int i = 11; i > 9; --i) {
    lLine(i, 7, 1, 7, 7, 1, 0);
  }
        // 5-> 1 partial
   for(int i = 8; i > 6; --i) {
    lLine(i, 7, 1, 7, 7, 1, 0);
  }
          // 5-> 1 partial
   for(int i = 5; i > 3; --i) {
    lLine(i, 7, 1, 7, 7, 1, 0);
  }
            // 5-> 1 partial
   for(int i = 2; i >= 1; --i) {
    lLine(i, 7, 1, 7, 7, 1, 0);
  }
  
      // 5-> 1 partial
   for(int i = 8; i >= 7; --i) {
    lLine(i, 8, 1, 7, 7, 1, 0);
  }
    // 4
  lLine(7, 8, 4, 5, 2, 0, 1);
  lDot(8, 8, 3, 9);
  lDot(8, 8, 5, 9);
  // 3
  lLine(8, 8, 1, 5, 2, 0, 1);
  lDot(7, 8, 3, 9);
  lDot(7, 8, 5, 9);
  lLine(8, 8, 7, 5, 2, 0, 1);
  
  ya(6,8);
  wa(11,8);
  wa(10, 8);
 lLine(10, 8, 5, 1, 7, 0, 1);
 lLine(9, 8, 1, 1, 6, 0, 1);
 lLine(9, 8, 4, 1, 6, 0, 1);
 lLine(9, 8, 1, 7, 6, 1, 0);
  
    // 5-> 1 partial
   for(int i = 5; i >= 1; --i) {
    lLine(i, 8, 1, 7, 7, 1, 0);
  }
  
    // 5
  lLine(5, 8, 1, 5, 2, 0, 1);
  lDot(5, 8, 3, 9);
  lDot(5, 8, 4, 10);
  lDot(5, 8, 5, 9);
  // 4
  lLine(4, 8, 4, 5, 2, 0, 1);
  lDot(4, 8, 3, 9);
  lDot(4, 8, 4, 10);
  lDot(4, 8, 5, 9);
  // 3
  lLine(3, 8, 1, 5, 2, 0, 1);
  lDot(3, 8, 3, 9);
  lDot(3, 8, 4, 10);
  lDot(3, 8, 5, 9);
  lLine(3, 8, 7, 5, 2, 0, 1);
  
  

// (11, 4) 
 dLine(11, 4, 2, 7, 3, 1, -1);
 lLine(11, 4, 2, 8, 5, 1, 0);
// (11, 4) 
 dLine(10, 4, 2, 7, 3, 1, -1);
  lLine(10, 4, 1, 8, 6, 1, 0);
// (11, 4) 
 dLine(9, 4, 2, 7, 3, 1, -1);
  lLine(9, 4, 2, 8, 5, 1, 0);
   lDot(9, 4, 4,3);
// (11, 4) 
 dLine(8, 4, 2, 7, 3, 1, -1);
 lLine(8, 4, 1, 8, 6, 1, 0);
  lDot(8, 4, 4, 3);


 
 // (11, 10) 1
 lLine(11, 10, 4, 1, 7, 0, 1);
 // (10, 10) 2
 lLine(10, 10, 6, 1, 7, 0, 1);
 lLine(10, 10, 2, 1, 4, 1, 0);
 // (9, 10) 3
 lLine(9, 10, 6, 1, 7, 0, 1);
 lLine(9, 10, 2, 2, 5, 1, 0);
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
 for (int i = 1; i <= 10; ++i) {
   lLine(1, 10, 1, i, 7, 1, 0);
 }
  */
}
