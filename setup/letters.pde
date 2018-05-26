// hamza
void hamza(int x, int y, int sx, int sy) {
  block(x, y, sx + 0, sy + 0);
  block(x, y, sx + 1, sy + 0);
  block(x, y, sx + 1, sy + 1);
  block(x, y, sx + 2, sy + 2);
  block(x, y, sx + 1, sy + 2);
  block(x, y, sx + 0, sy + 2);
}



// alef 
void cont_alef_hamza(int x, int y) {
  verLine(x, y, 4, 4, 3);
  horLine(x, y, 1, 7, 4);
  hamza(x, y, 4, 1);
}

void sep_hamza(int x, int y) {
  hamza(x, y, 3, 5);
}

void cont_alef_hamza_ksr(int x, int y) {
  horLine(x, y, 1, 7, 3);
  hamza(x, y, 4, 8);
  verLine(x, y, 4, 1, 6);
}

void sep_alef_s(int x, int y) {
  verLine(x, y, 4, 3, 5);
  horLine(x, y, 2, 1, 5);
  
}

void cont_alef_s(int x, int y) {
  horLine(x, y, 2, 1, 6);
  verLine(x, y, 4, 3, 5);
  horLine(x, y, 1, 7, 3);
  
}

void sep_alef_hamza(int x, int y) {
  hamza(6, 1, 4, 1);
  verLine(6, 1, 4, 4, 4);
}

void sep_alef_hamza_ksr(int x, int y) {
  verLine(x, y, 4, 1, 7);
  hamza(x, y, 4, 8);
}

void  beg_alef_hamza(int x, int y) {
  hamza(x, y, 4, 1);
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
}

void mid_alef_hamza(int x, int y) {
  hamza(3, 1, 4, 1);
  horLine(3, 1, 1, 7, 7);
  verLine(3, 1, 4, 5, 2);
}



// ya'a
void ya_hamza_nn(int x, int y) {
  hamza(x, y, 5, 1);
  ya(x, 1);
  horLine(x, y, 1, 10, 2);
  
}

void ya(int x, int y) {
  horLine(x, y, 4, 10, 4);
  verLine(x, y, 7, 7, 3);
  horLine(x, y, 2, 5, 3);

  block(x, y, 6, 6);
  block(x, y, 4, 6);
  block(x, y, 2, 6);
  block(x, y, 1, 7);
  zVerLine(x, y, 4, 7, -1);

}



// waw
void wa(int x, int y) {

  verLine(x, y, 1, 6, 2);
  verLine(x, y, 2, 6, 2);
  diaLine(x, y, 1, 8, 3, 1);
  horLine(x, y, 3, 10, 4); 

}

void wa_hamza(int x, int y) {
  hamza(x, y, 1, 1);
  wa(x,y);
  
}
