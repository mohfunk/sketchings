
void draw () {

  
  // for tweeking
   showCGrid();
   showLGrid();
//1
  //1
  sep_hamza(11, 1);
  //2
  cont_alef_hamza(10,1);
  //3
  cont_alef_hamza_ksr(9,1);
  //4
  sep_alef_s(8,1);
  //5
  cont_alef_s(7,1);
  //6
  sep_alef_hamza(6,1);
  //7
  sep_alef_hamza_ksr(5,1);
  //8
  
  //9
  
  //10
  
  //11
//2
  //1
  
  //2
  
  //3
  
  //4
  
  //5
  
  //6
  
  //7
  
  //8
  
  //9
  
  //10
  
  //11
  
//3
  //1
  
  //2
  
  //3
  
  //4
  
  //5
  
  //6
  
  //7
  
  //8
  
  //9
  
  //10
  
  //11

   
        // 5-> 1 partial
   for(int i = 6; i > 2; --i) {
    horLine(i, 5, 1, 7, 7);
  }
  
      // 5-> 1 partial
   for(int i = 7; i >= 1; --i) {
    horLine(i, 6, 1, 7, 7);
  }
          // 5-> 1 partial
   for(int i = 11; i > 9; --i) {
    horLine(i, 7, 1, 7, 7);
  }
        // 5-> 1 partial
   for(int i = 8; i > 6; --i) {
    horLine(i, 7, 1, 7, 7);
  }
          // 5-> 1 partial
   for(int i = 5; i > 3; --i) {
    horLine(i, 7, 1, 7, 7);
  }
            // 5-> 1 partial
   for(int i = 2; i >= 1; --i) {
    horLine(i, 7, 1, 7, 7);
  }
  
      // 5-> 1 partial
   for(int i = 8; i >= 7; --i) {
    horLine(i, 8, 1, 7, 7);
  }
    // 4
  verLine(7, 8, 4, 5, 2);
  block(8, 8, 3, 9);
  block(8, 8, 5, 9);
  // 3
  verLine(8, 8, 1, 5, 2);
  block(7, 8, 3, 9);
  block(7, 8, 5, 9);
  verLine(8, 8, 7, 5, 2);
 
  
  ya(6,8);
  wa(11,8);
  wa(10, 8);
 verLine(10, 8, 5, 1, 7);
 verLine(9, 8, 1, 1, 6);
 verLine(9, 8, 4, 1, 6);
 horLine(9, 8, 1, 7, 6);
  
    // 5-> 1 partial
   for(int i = 5; i >= 1; --i) {
    horLine(i, 8, 1, 7, 7);
  }
  
    // 5
  verLine(5, 8, 1, 5, 2);
  block(5, 8, 3, 9);
  block(5, 8, 4, 10);
  block(5, 8, 5, 9);
  // 4
  verLine(4, 8, 4, 5, 2);
  block(4, 8, 3, 9);
  block(4, 8, 4, 10);
  block(4, 8, 5, 9);
  // 3
  verLine(3, 8, 1, 5, 2);
  block(3, 8, 3, 9);
  block(3, 8, 4, 10);
  block(3, 8, 5, 9);
  verLine(3, 8, 7, 5, 2);
  
  
/*
// (11, 4) 
 diaLine(11, 4, 2, 7, 3, 1, -1);
 horLine(11, 4, 2, 8, 5, 1, 0);
// (11, 4) 
 diaLine(10, 4, 2, 7, 3, 1, -1);
  horLine(10, 4, 1, 8, 6, 1, 0);
// (11, 4) 
 diaLine(9, 4, 2, 7, 3, 1, -1);
  horLine(9, 4, 2, 8, 5, 1, 0);
   block(9, 4, 4,3);
// (11, 4) 
 diaLine(8, 4, 2, 7, 3, 1, -1);
 horLine(8, 4, 1, 8, 6, 1, 0);
  block(8, 4, 4, 3);


 
 // (11, 10) 1
 horLine(11, 10, 4, 1, 7, 0, 1);
 // (10, 10) 2
 horLine(10, 10, 6, 1, 7, 0, 1);
 horLine(10, 10, 2, 1, 4, 1, 0);
 // (9, 10) 3
 horLine(9, 10, 6, 1, 7, 0, 1);
 horLine(9, 10, 2, 2, 5, 1, 0);
 block(9, 10, 4, 1);
 block(9, 10, 2, 1);
 // (8, 10) 4
 horLine(8, 10, 2, 1, 4, 1, 0);
 horLine(8, 10, 6, 2, 2, 0, 1);
 horLine(8, 10, 2, 4, 4, 1, 0);
 horLine(8, 10, 6, 5, 2, 0, 1);
 horLine(8, 10, 2, 7, 4, 1, 0);
 // (7, 10) 5
 tBlocksHor(7, 10, 5, 2, -1);
 tBlocksVer(7, 10, 6, 5, 1);
 tBlocksHor(7, 10, 5, 6, 1);
 tBlocksVer(7, 10, 2, 5, -1);
 // ( 6, 10) 6
 horLine(6, 10, 2, 1, 7, 0, 1); // pffset by 1 on sx
 horLine(6, 10, 3, 1, 4, 1, 0); // offset by 1 on sx
 // ( 5, 10) 7
 horLine(5, 10, 6, 1, 5, 0, 1);
 horLine(5, 10, 2, 1, 5, 0, 1);
 tBlocksHor(5, 10, 5, 6, 1);
 // ( 4, 10) 8
 horLine(4, 10, 6, 3, 5, 0, 1);
 horLine(4, 10, 2, 3, 5, 0, 1);
 tBlocksHor(4, 10, 5, 2, -1);
 // (3, 10) 9
 horLine(3, 10, 3, 1, 7, 0, 1);
 horLine(3, 10, 4, 1, 2, 1, 0);
 horLine(3, 10, 5, 2, 2, 0, 1);
 horLine(3, 10, 4, 3, 1, 1, 0);
 // (2, 10) 0
 horLine(2, 10, 5, 7, 1, 1, 0);
 // (1, 10) 
 for (int i = 1; i <= 10; ++i) {
   horLine(1, 10, 1, i, 7, 1, 0);
 }
  */
}
