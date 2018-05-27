// HAMZA
void hmz(int x, int y, int sx, int sy) {
  block(x, y, sx + 0, sy + 0);
  block(x, y, sx + 1, sy + 0);
  block(x, y, sx + 1, sy + 1);
  block(x, y, sx + 2, sy + 2);
  block(x, y, sx + 1, sy + 2);
  block(x, y, sx + 0, sy + 2);
}

void sep_hmz(int x, int y) {
  hmz(x, y, 3, 5);
}

// ALEF
void sep_alf(int x, int y) {
  verLine(x, y, 4, 1, 7);
 
}


void sep_alf_hmz(int x, int y) {
  hmz(6, 1, 4, 1);
  verLine(6, 1, 4, 4, 4);
}

void sep_alf_hmz_ksr(int x, int y) {
  verLine(x, y, 4, 1, 7);
  hmz(x, y, 4, 8);
}

void sep_alf_s(int x, int y) {
  verLine(x, y, 4, 3, 5);
  horLine(x, y, 2, 1, 5);
  
}


void  beg_alf_hmz(int x, int y) {
  hmz(x, y, 4, 1);
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
}

void mid_alf_hmz(int x, int y) {
  hmz(3, 1, 4, 1);
  horLine(3, 1, 1, 7, 7);
  verLine(3, 1, 4, 5, 2);
}

void con_alf(int x, int y) {
  verLine(x, y, 4, 1, 6);
  horLine(x, y, 1, 7, 4);
}

void con_alf_hmz(int x, int y) {
  verLine(x, y, 4, 4, 3);
  horLine(x, y, 1, 7, 4);
  hmz(x, y, 4, 1);
}


void con_alf_hmz_ksr(int x, int y) {
  horLine(x, y, 1, 7, 3);
  hmz(x, y, 4, 8);
  verLine(x, y, 4, 1, 6);
}


void con_alf_s(int x, int y) {
  horLine(x, y, 2, 1, 6);
  verLine(x, y, 4, 3, 5);
  horLine(x, y, 1, 7, 3);
  
}

void maq_alf(int x, int y) {
  yaa(x,y);
}


// BA'
void sep_abs_baa(int x, int y) {
  beg_abs_baa(x,y);
  verLine(x, y, 7, 5, 2);
}

void sep_baa(int x, int y) {
   sep_abs_baa(x,y);
   block(x, y, 4, 9);
}

void sep_baa_nnn(int x, int y) {
  sep_abs_baa(x,y);
}


void beg_abs_baa(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
}

void beg_baa(int x, int y) {
  beg_abs_baa(x,y);
  block(x, y, 4, 9);
  
}

void beg_baa_nnn(int x, int y) {
  beg_abs_baa(x,y);
}

void con_abs_baa(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 4, 5, 2);
}

void con_baa(int x, int y) {
  con_abs_baa(x,y);
  block(x, y, 4, 9);
  
}

void con_baa_nnn(int x, int y) {
   con_abs_baa(x,y);
}


void abs_taa(int x, int y) {
  block(x, y, 3, 3);
  block(x, y, 5, 3);
}
void sep_taa(int x, int y) {
  sep_abs_baa(x,y);
  abs_taa(x,y);
}

void beg_taa(int x, int y) {
  beg_abs_baa(x,y);
  abs_taa(x,y);
}

void con_taa(int x, int y) {
  con_abs_baa(x,y);
  abs_taa(x,y);
}

void mar_taa(int x, int y) {
  horLine(x, y, 1, 7, 7);
  block(x, y, 5, 1);
  block(x, y, 7, 1);
  verLine(x,y,2,1,6);
  diaLine(x,y,3,2,5,1);
}

void sep_tha(int x, int y) {
 sep_abs_baa(x,y);
 zHorLine(x,y,3,3,-1);
}

void beg_tha(int x, int y) {
  beg_abs_baa(x,y);
  zHorLine(x,y,3,3,-1);
}

void con_tha(int x, int y) {
  con_abs_baa(x,y);
  zHorLine(x,y,3,3,-1);
}

void sep_haa(int x, int y) {
  horLine(x,y,3,3,5);
  block(x,y,4,4);
  diaLine(x,y,5,4,3,1);
  block(x,y,7,7);
  diaLine(x,y,5,10,3,-1);
  block(x,y,4,10);
  diaLine(x,y,1,8,3,1);
}

void end_haa(int x, int y) {
  horLine(x,y,3,3,5);
  block(x,y,4,4);
  diaLine(x,y,5,4,3,1);
  block(x,y,7,7);
  diaLine(x,y,5,10,3,-1);
  block(x,y,4,10);
  diaLine(x,y,1,7,3,-1);
  diaLine(x,y,2,9,2,1);
}

void con_haa(int x, int y) {
  horLine(x, y, 1, 7, 7);
  horLine(x, y, 2, 7, 6);
  diaLine(x,y,1,7,3,-1);
  horLine(x,y,4,5,2);
  block(x,y,2,8);
  
}



void con_jem(int x, int y) {
  con_haa(x,y);
  block(x, y, 4, 9);
}

void sep_jem(int x, int y) {
  sep_haa(x,y);
  block(x,y, 4, 7);
}


void end_jem(int x, int y) {
  end_haa(x,y);
  block(x,y, 4, 7);
}

void con_kha(int x, int y) {
  con_haa(x,y);
  block(x, y, 4, 3);
}

void sep_kha(int x, int y) {
  sep_haa(x,y);
  block(x, y, 5, 1);
}


void end_kha(int x, int y) {
  end_haa(x,y);
   block(x, y, 5, 1);
}


void sep_dal(int x, int y) {
  diaLine(x, y, 2, 6, 3,-1);
  horLine(x, y, 2, 7, 5);
}

void con_dal(int x, int y) {
  diaLine(x, y, 2, 6, 3,-1);
  horLine(x, y, 2, 7, 6);
}

void sep_dta(int x, int y) {
  diaLine(x, y, 2, 6, 3,-1);
  horLine(x, y, 2, 7, 5);
  block(x, y, 4, 2);
}

void con_dta(int x, int y) {
  diaLine(x, y, 2, 6, 3,-1);
  horLine(x, y, 2, 7, 6);
  block(x, y, 4, 2);
}



void raa(int x, int y) {
  diaLine(x,y,1,7,4,1);
  horLine(x,y,5,10,3);
}

void raa_alf(int x, int y) {
 raa(x,y);
 verLine(x,y,5,1,7);
  
}

void zaa(int x, int y) {
  raa(x,y);
  block(x,y,1,5);
}

void zaa_alf(int x, int y) {
 raa_alf(x,y);
 block(x,y,1,5);
  
}

 
void abs_sen(int x,int y) {
   horLine(x, y, 1, 7, 5);
   block(x,y,1,6);
   block(x,y,3,6);
   block(x,y,5,6);
}

void beg_sen(int x,int y) {
   abs_sen(x,y);
   horLine(x, y, 6, 7, 2);
}
void sep_sen(int x,int y) {
   abs_sen(x,y);
   verLine(x, y, 5, 8, 2);
   horLine(x, y, 5, 10, 2);
   verLine(x, y, 7, 7, 4);
}

void beg_shn(int x,int y) {
  beg_sen(x,y);
  zHorLine(x,y,2,4,-1);
}
void sep_shn(int x,int y) {
   sep_sen(x,y);
   zHorLine(x,y,2,4,-1);
   
}

void abs_sad(int x,int y) {
   horLine(x, y, 1,5,3);
   horLine(x, y, 1, 7, 5);
   block(x,y,1,6);
   block(x,y,4,6);
   
}

void beg_sad(int x,int y) {
   abs_sad(x,y);
   horLine(x, y, 6, 7, 2);
   block(x,y,6,6);
}

void sep_sad(int x,int y) {
   abs_sad(x,y);
   verLine(x, y, 5, 8, 2);
   horLine(x, y, 5, 10, 2);
   verLine(x, y, 7, 7, 4);
}

void beg_dad(int x,int y) {
  beg_sad(x,y);
  block(x,y,2,3);
}
void sep_dad(int x,int y) {
   sep_sad(x,y);
   block(x,y,2,3);
   
}

void tta(int x, int y) {
  abs_sad(x,y);
  horLine(x,y, 6, 7, 2);
  verLine(x,y, 3, 1, 4);
  
}


void tda(int x, int y) {
  tta(x,y);
  block(x,y,1,3);
}

// waww
void waw(int x, int y) {

  verLine(x, y, 1, 6, 2);
  verLine(x, y, 2, 6, 2);
  diaLine(x, y, 1, 8, 3, 1);
  horLine(x, y, 3, 10, 4); 

}

void waw_hmz(int x, int y) {
  hmz(x, y, 1, 1);
  waw(x,y);
  
}

void yaa_hmz_nn(int x, int y) {
  hmz(x, y, 5, 1);
  yaa(x, 1);
  horLine(x, y, 1, 10, 2);
  
}


void beg_yaa(int x, int y) {
  
  verLine(x, y, 1, 5, 2);
}

void con_yaa(int x, int y) {
 
  verLine(x, y, 4, 5, 2);
}

void yaa(int x, int y) {
  horLine(x, y, 4, 10, 4);
  verLine(x, y, 7, 7, 3);
  horLine(x, y, 2, 5, 3);

  block(x, y, 6, 6);
  block(x, y, 4, 6);
  block(x, y, 2, 6);
  block(x, y, 1, 7);
  zVerLine(x, y, 4, 7, -1);

}
