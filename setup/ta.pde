void beg_ta(int x, int y) {
  horLine(x, y, 1, 7, 7);
  block(x, y, 3, 3);
  block(x, y, 5, 3);
  verLine(x, y, 1, 5, 2);
}

void cont_ta(int x, int y) {
  horLine(x, y, 1, 7, 7);
  block(x, y, 3, 3);
  block(x, y, 5, 3);
  verLine(x, y, 4, 5, 2);
}


void sep_ta(int x, int y) {
 horLine(x, y, 1, 7, 7);
  block(x, y, 3, 3);
  block(x, y, 5, 3);
  verLine(x, y, 1, 5, 2);
  verLine(x, y, 7, 5, 2);
}

void mar_ta(int x, int y) {
  horLine(x, y, 1, 7, 7);
  block(x, y, 5, 1);
  block(x, y, 7, 1);
  verLine(x,y,2,1,6);
  diaLine(x,y,3,2,5,1);
}
