void beg_tha(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 1, 5, 2);
  zHorLine(x,y,3,3,-1);
}

void cont_tha(int x, int y) {
  horLine(x, y, 1, 7, 7);
  verLine(x, y, 4, 5, 2);
  zHorLine(x,y,3,3,-1);
}


void sep_tha(int x, int y) {
 horLine(x, y, 1, 7, 7);
 verLine(x, y, 1, 5, 2);
 verLine(x, y, 7, 5, 2);
 zHorLine(x,y,3,3,-1);
}
