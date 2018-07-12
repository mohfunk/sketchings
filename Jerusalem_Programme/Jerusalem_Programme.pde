/* 
Part of the ReCode Project (http://recodeproject.com)
Based on "Untitled 4" by Jerusalem Programme
Originally published in "Computer Graphics and Art" vol2 no3, 1977
Copyright (c) 2018 Mohammed Fahad - OSI/MIT license (http://recodeproject/license).
*/


int m = 10; // margin
int bds = 7; // draw block size
int brs = 10; // real block size
int bw = 9; // width of a block
int bh = 12; // height of a block
int s = bw - 1; // shift factor to start from right (Arabic is right to left)
void setup() {
  size(1010, 1340, P2D); 
  background(10);
  stroke(255, 10.0);
  strokeWeight(1);
  noLoop();
}

void showCGrid() {
  
  for (int i = m; i <= height; i += (brs * bh)) {
    line(m, i, width - m, i);
  }
   for (int j = m; j <= width; j += (brs * bw)) {

    line(j, m, j, height - m);
  }
}

void showLGrid() {
      for (int i = m; i <= height - m; i += brs) {

      line(m, i, width - m, i);
    }
     for (int j = m; j <= width - m; j += brs) {
      line(j, m, j, height - m);
    } 
}


void block(int x, int y, int sx, int sy) {
  noFill();
  stroke(255);
  strokeWeight(1);
  rect(m + (brs * (s - 1)) - (brs * (sx-1)) + ((brs * bw) * (x-1)), 
      m + brs +  (brs * (sy-1)) + ((brs * bh) * (y-1)),
      bds,
      bds);

}



void horLine(int x, int y, int sx, int sy, int len) {
  for(int i = 0; i < len; ++i) {
    block(x,y, sx + i, sy);
  }

}



void verLine(int x, int y, int sx, int sy, int len) {
  for(int i = 0; i < len; ++i) {
    block(x,y, sx, sy + i);
  }

}



void diaLine(int x, int y, int sx, int sy, int len, int ori) {
  for(int i = 0; i < len; ++i) {
    block(x,y, sx + i, sy + i * ori);
  }
}



void zHorLine(int x, int y, int sx, int sy, int ori) {
  block(x,y,sx,sy);
  block(x,y,sx + 1,sy + (1 * ori));
  block(x,y,sx + 2,sy);
}



void zVerLine(int x, int y, int sx, int sy, int ori) {
  block(x,y,sx,sy);
  block(x,y,sx + (1 * ori),sy + 1);
  block(x,y,sx,sy + 2);
}


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
  block(x, y, 3, 9);
  block(x, y, 4, 10);
  block(x, y, 5, 9);
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
  block(x, y, 3, 9);
  block(x, y, 4, 10);
  block(x, y, 5, 9);
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
  block(x, y, 3, 9);
  block(x, y, 4, 10);
  block(x, y, 5, 9);
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

void seb_abs_ain(int x, int y) {
  // block(x,y,4,4);
  diaLine(x,y,5,4,3,1);
  block(x,y,7,7);
  diaLine(x,y,5,10,3,-1);
  block(x,y,4,10);
  diaLine(x,y,1,8,3,1);
}

void end_abs_ain(int x, int y) {
  block(x,y,3,4);
  block(x,y,7,6);
  block(x,y,7,7);
  diaLine(x,y,5,10,3,-1);
  block(x,y,4,10);
  block(x, y, 2, 6);
  block(x, y, 1, 7);
  diaLine(x,y,2,9,2,1);
  
}
void seb_ain_h(int x, int y) {
  horLine(x, y, 3, 3, 3);
  horLine(x, y, 3, 5, 4); 
   block(x, y, 5, 3);
   block(x, y, 5, 4);
}
void sep_ain(int x, int y) {
  seb_abs_ain(x,y);
  seb_ain_h(x, y);
}

void end_ain(int x, int y) {
  end_abs_ain(x,y);
  seb_ain_h(x, y);
  
}
void beg_abs_ain(int x, int y) {
  horLine(x, y, 1, 7, 7);
  horLine(x, y, 3, 4, 3);
}


void beg_ain(int x, int y) {
  beg_abs_ain(x,y);
  block(x,y,2,5);
  verLine(x, y, 5, 5, 2);
}

void con_ain(int x, int y) {
  beg_abs_ain(x,y);
  block(x,y,2,5);
  block(x,y,3,6);
  block(x,y,5,6);
  block(x, y, 6, 5);
  
}

void sep_gin(int x, int y) {
  sep_ain(x, y);
  block(x, y, 4, 1);
}

void end_gin(int x, int y) {
  end_ain(x, y);
  block(x, y, 4, 1);
}
void end_gin_nnn(int x, int y) {
  end_gin(x, y);
  horLine(x, y, 3, 1, 3);
}

void sep_gin_nnn(int x, int y) {
  sep_gin(x, y);
  horLine(x, y, 3, 1, 3);
}
void beg_gin(int x, int y) {
  beg_ain(x, y);
  block(x, y, 4, 2);
}

void con_gin(int x, int y) {
  con_ain(x,y);
  block(x, y, 4, 2);
  
}

void beg_gin_nnn(int x, int y) {
  beg_ain(x, y);
  block(x, y, 3, 2);
  block(x, y, 4, 1);
  block(x, y, 5, 2);
 
}

void con_gin_nnn(int x, int y) {
  con_ain(x,y);
  block(x, y, 3, 2);
  block(x, y, 4, 1);
  block(x, y, 5, 2);
  
}
void beg_faa(int x, int y) {
   horLine(x, y, 1, 7, 7);
   verLine(x, y, 1, 4, 3);
   verLine(x, y, 2, 4, 2);
   block(x, y, 1, 2);
  
}
void sep_faa(int x, int y) {
   beg_faa(x, y);
   block(x, y, 7, 6);
  
}

void con_faa(int x, int y) {
   horLine(x, y, 1, 7, 7);
   verLine(x, y, 3, 4, 3);
   verLine(x, y, 4, 4, 2);
   block(x, y, 3, 2);
  
}


void beg_qaa(int x, int y) {
   beg_faa(x, y);
   block(x, y, 3, 2);
  
}
void sep_qaa(int x, int y) {
   sep_faa(x, y);
   block(x, y, 3, 2);
  
}

void con_qaa(int x, int y) {
   con_faa(x, y);
   block(x, y, 5, 2);
  
}

void beg_qaa_nnn(int x, int y) {
   beg_qaa(x, y);
   block(x, y, 2, 1);
  
}
void sep_qaa_nnn(int x, int y) {
   sep_qaa(x, y);
   block(x, y, 2, 1);
  
}

void con_qaa_nnn(int x, int y) {
   con_qaa(x, y);
   block(x, y, 4, 1);
  
}

void kaf(int x, int y) {
  horLine(x, y, 1, 7, 7);
  horLine(x, y, 1, 5, 6);
  block(x, y, 1,6);
  diaLine(x, y, 4, 2, 3, 1);
  
}

void beg_lam(int x, int y) {
  verLine(x, y, 1, 1, 6);
  horLine(x, y, 1, 7, 7);
}

void mid_lam(int x, int y) {
  con_alf(x, y);
  horLine(x, y, 5, 7, 3);
  
}


void end_lam(int x, int y) {
  verLine(x, y, 1, 1, 8);
  block(x, y, 2, 9);
  horLine(x, y, 3, 10, 3);
  block(x, y, 6, 9);
  verLine(x, y, 7, 6, 3);
}

void lam_alf(int x, int y) {
  verLine(x, y, 1, 1, 6);
  horLine(x, y, 1, 7, 6);
  verLine(x, y, 4, 1, 6);
}


void beg_mem(int x, int y) {
    horLine(x, y, 1, 7, 7);
    horLine(x, y, 1, 8, 2);
  
  
}



void mid_mem(int x, int y) {
    horLine(x, y, 1, 7, 7);
    horLine(x, y, 2, 8, 2);
  
}


void end_mem(int x, int y) {
  horLine(x, y, 1, 6, 2);
  horLine(x, y, 1, 7, 2);
  diaLine(x, y, 3, 8, 3, 1);
  block(x, y, 6, 10);
  
  
}



void beg_non(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
  block(x, y, 4, 3);
  
}

void mid_non(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 4, 5, 2);
  block(x, y, 4, 3);
  
}

void end_non(int x, int y) {
  verLine(x, y, 1, 7, 2);
  block(x, y, 2, 9);
  horLine(x, y, 3, 10, 3);
  block(x, y, 6, 9);
  verLine(x, y, 7, 7, 2);
  block(x, y, 4, 5);
  
}


void mid_hha(int x, int y) {
   horLine(x, y, 1, 7, 7);
   zHorLine(x, y, 2, 9, 1);
   zHorLine(x, y, 2, 5, -1);
   block(x, y, 2, 6);
   block(x, y, 2, 8);
   block(x, y, 4, 6);
   block(x, y, 4, 8);
  
  
}



void end_hha(int x, int y) {
 horLine(x, y, 1, 7, 7);
  verLine(x,y,2,1,6);
  diaLine(x,y,3,2,5,1);
  
  
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

void waw_alf(int x, int y) {
  waw(x, y);
  verLine(x, y, 5, 1, 7);
  
}

void yaa_hmz_nn(int x, int y) {
  hmz(x, y, 5, 1);
  yaa(x, 1);
  horLine(x, y, 1, 10, 2);
  
}


void beg_yaa(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
  block(x, y, 3, 9);
  block(x, y, 5, 9);
}

void con_yaa(int x, int y) {
 horLine(x, y, 1, 7, 7);
  verLine(x, y, 4, 5, 2);
  block(x, y, 3, 9);
  block(x, y, 5, 9);
}

void yaa(int x, int y) {
  horLine(x, y, 4, 10, 4);
  verLine(x, y, 7, 7, 3);
  horLine(x, y, 2, 5, 3);
  horLine(x, y, 1, 10, 2);

  block(x, y, 6, 6);
  block(x, y, 4, 6);
  block(x, y, 2, 6);
  block(x, y, 1, 7);
  zVerLine(x, y, 4, 7, -1);

}

void per(int x, int y) {
  horLine(x, y, 3, 6, 2);
  horLine(x, y, 3, 7, 2);
}

void qus(int x, int y) {
  diaLine(x, y, 2, 3, 3, -1);
  diaLine(x, y, 5, 1, 3, 1);
  block(x, y, 2, 4);
  block(x, y, 4, 10);
  block(x, y, 4, 8);
  block(x, y, 7, 4);
  block(x, y, 7, 5);
  diaLine(x, y, 2, 5, 3, 1);
  
}


void cma(int x, int y) {
 per(x, y);
 block(x, y, 4, 5);
  
}

void acs(int x, int y) {
  verLine(x, y, 3, 1, 7);
  verLine(x, y, 3, 9, 2);
  
  
}

void vod(int x, int y) {
  horLine(x, y, 2, 7, 5);
  
}


void cln(int x, int y) {
  verLine(x, y, 3, 4, 2);
  verLine(x, y, 3, 7, 2);
}
  
  
  void one(int x, int y) {
  sep_alf(x,y);
}

void two(int x, int y) {
   verLine(x, y, 6, 1, 7);
   horLine(x, y, 2, 1, 4);
  
}


void thr(int x, int y) {
  verLine(x, y, 6, 1, 7);
  horLine(x, y, 2, 2, 4);
  block(x, y, 2, 1);
  block(x, y, 4, 1);
  
}


void fur(int x, int y) {
   horLine(x, y, 2, 1, 4);
   verLine(x, y, 6, 2, 2);
   horLine(x, y, 2, 4, 4);
   verLine(x, y, 6, 5, 2);
   horLine(x, y, 2, 7, 4);
  
}


void fiv(int x, int y) {
   zHorLine(x, y, 3, 2, -1);
   zVerLine(x, y, 6, 3, 1);
   zHorLine(x, y, 3, 6, 1);
   zVerLine(x, y, 2, 3, -1);
  
}

void six(int x, int y) {
   verLine(x, y, 2, 1, 7); // pffset by 1 on sx
   horLine(x, y, 3, 1, 4); // offset by 1 on sx
  
}


void svn(int x, int y) {
   verLine(x, y, 6, 1, 5);
   verLine(x, y, 2, 1, 5);
   zHorLine(x, y, 3, 6, 1);
}


void egt(int x, int y) {
   verLine(x, y, 6, 3, 5);
   verLine(x, y, 2, 3, 5);
   zHorLine(x, y, 3, 2, -1);
  
}



void nin(int x, int y) {
   verLine(x, y, 3, 1, 7);
   horLine(x, y, 4, 1, 2);
   verLine(x, y, 5, 2, 2);
   horLine(x, y, 4, 3, 1);
  
  
}


void zro(int x, int y) {
  horLine(x, y, 5, 7, 1);
}

void fbl(int x, int y) {
  
   for (int i = 1; i <= 10; ++i) {
   horLine(x, y, 1, i, 7);
   }
   
}


void draw () {


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
  end_ain(1,5);
  sep_ain(2,5);
  con_ain(3,5);
  beg_ain(4,5);
  tda(5,5);
  tta(6,5);
  sep_dad(7,5);
  beg_dad(8,5);
  sep_sad(9,5);
  beg_sad(10,5);
  sep_shn(11,5);
  //6
  kaf(1, 6);
  sep_qaa(2, 6);
  con_qaa(3, 6);
  beg_qaa(4, 6);
  sep_faa(5, 6);
  con_faa(6, 6);
  beg_faa(7, 6);
  end_gin(8, 6);
  sep_gin(9, 6);
  con_gin(10,6);
  beg_gin(11,6);
  // 7
  end_hha(1, 7);
  mid_hha(2, 7);
  end_non(3, 7);
  mid_non(4, 7);
  beg_non(5, 7);
  end_mem(6, 7);
  mid_mem(7, 7);
  beg_mem(8, 7);
  end_lam(9, 7);
  mid_lam(10, 7);
  beg_lam(11, 7);
  // 8
  con_gin_nnn(1,8);
  beg_gin_nnn(2,8);
  sep_baa_nnn(3,8);
  con_baa_nnn(4,8);
  beg_baa_nnn(5,8);
  yaa(6, 8);
  con_yaa(7, 8);
  beg_yaa(8,8);
  lam_alf(9,8);
  waw_alf(10, 8);
  waw(11, 8);
  // 9
  qus(1, 9);
  acs(2, 9);
  vod(3, 9);
  cln(4, 9);
  cma(5, 9);
  per(6, 9);
  sep_qaa_nnn(7, 9);
  con_qaa_nnn(8, 9);
  beg_qaa_nnn(9, 9);
  end_gin_nnn(10, 9);
  sep_gin_nnn(11, 9);

  
  
  



  //10
  fbl(1, 10);
  zro(2, 10);
  nin(3, 10);
  egt(4, 10);
  svn(5, 10);
  six(6, 10);
  fiv(7, 10);
  fur(8, 10);
  thr(9, 10);
  two(10, 10);
  one(11, 10);
}
