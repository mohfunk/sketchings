
void draw () {


  // for tweeking
  showCGrid();
  showLGrid();

  //1
  waw_hmz(1, 1);
  yaa_hmz_nn(2, 1);
  mid_alf_hmz(3, 1);
  beg_alf_hmz(4, 1);
  sep_alf_hmz_ksr(5, 1);
  sep_alf_hmz(6, 1);
  con_alf_s(7, 1);
  sep_alf_s(8, 1);
  con_alf_hmz_ksr(9, 1);
  con_alf_hmz(10, 1);
  sep_hmz(11, 1);
  //2
  beg_tha(1,2);
  mar_taa(2,2);
  sep_taa(3,2);
  con_taa(4,2);
  beg_taa(5,2);
  sep_baa(6,2);
  con_baa(7,2);
  beg_baa(8,2);
  maq_alf(9,2);
  con_alf(10,2);
  sep_alf(11,2);
  // 3
  sep_tha(10,3);
  con_tha(11,3);
  con_jem(9,3);
  sep_jem(8,3);
  end_jem(7,3);
  con_haa(6,3);
  sep_haa(5,3);
  end_haa(4,3);
  con_kha(3,3);
  sep_kha(2,3);
  end_kha(1,3);
  // 4
  beg_shn(1,4);
  sep_sen(2,4);
  beg_sen(3,4);
  zaa_alf(4,4);
  zaa(5,4);
  raa_alf(6,4);
  raa(7,4);
  con_dta(8,4);
  sep_dta(9,4);
  con_dal(10,4);
  sep_dal(11,4);
  //5
  tda(5,5);
  tta(6,5);
  sep_dad(7,5);
  beg_dad(8,5);
  sep_sad(9,5);
  beg_sad(10,5);
  sep_shn(11,5);
 



  // 5-> 1 partial
  for (int i = 7; i >= 1; --i) {
    horLine(i, 6, 1, 7, 7);
  }
  // 5-> 1 partial
  for (int i = 11; i > 9; --i) {
    horLine(i, 7, 1, 7, 7);
  }
  // 5-> 1 partial
  for (int i = 8; i > 6; --i) {
    horLine(i, 7, 1, 7, 7);
  }
  // 5-> 1 partial
  for (int i = 5; i > 3; --i) {
    horLine(i, 7, 1, 7, 7);
  }
  // 5-> 1 partial
  for (int i = 2; i >= 1; --i) {
    horLine(i, 7, 1, 7, 7);
  }

  // 5-> 1 partial
  for (int i = 8; i >= 7; --i) {
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


  yaa(6, 8);
  waw(11, 8);
  waw(10, 8);
  verLine(10, 8, 5, 1, 7);
  verLine(9, 8, 1, 1, 6);
  verLine(9, 8, 4, 1, 6);
  horLine(9, 8, 1, 7, 6);

  // 5-> 1 partial
  for (int i = 5; i >= 1; --i) {
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
