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
  
