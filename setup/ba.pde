void sep_ba(int x, int y) {
   horLine(x, y, 1, 7, 7);
   block(x, y, 4, 9);
  verLine(x, y, 1, 5, 2);
  verLine(x, y, 7, 5, 2);
}



void beg_ba_nnn(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
}



void beg_ba(int x, int y) {
  horLine(x, y, 1, 7, 7);
  block(x, y, 4, 9);
  verLine(x, y, 1, 5, 2);
}



void cont_ba(int x, int y) {
  horLine(x, y, 1, 7, 7);
  block(x, y, 4, 9);
  verLine(x, y, 4, 5, 2);
}



void cont_ba_nnn(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 4, 5, 2);
}



void sep_ba_nnn(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
  verLine(x, y, 7, 5, 2);
}
