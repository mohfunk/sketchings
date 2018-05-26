
void sep_alef(int x, int y) {
  verLine(x, y, 4, 1, 7);
 
}

void sep_hamza(int x, int y) {
  hamza(x, y, 3, 5);
}

void sep_alef_s(int x, int y) {
  verLine(x, y, 4, 3, 5);
  horLine(x, y, 2, 1, 5);
  
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

void cont_alef(int x, int y) {
  verLine(x, y, 4, 1, 6);
  horLine(x, y, 1, 7, 4);
}

void cont_alef_hamza(int x, int y) {
  verLine(x, y, 4, 4, 3);
  horLine(x, y, 1, 7, 4);
  hamza(x, y, 4, 1);
}


void cont_alef_hamza_ksr(int x, int y) {
  horLine(x, y, 1, 7, 3);
  hamza(x, y, 4, 8);
  verLine(x, y, 4, 1, 6);
}


void cont_alef_s(int x, int y) {
  horLine(x, y, 2, 1, 6);
  verLine(x, y, 4, 3, 5);
  horLine(x, y, 1, 7, 3);
  
}

void maq_alef(int x, int y) {
  ya(x,y);
}
