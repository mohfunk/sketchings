void ya_hamza_nn(int x, int y) {
  hamza(x, y, 5, 1);
  ya(x, 1);
  horLine(x, y, 1, 10, 2);
  
}


void beg_ya(int x, int y) {
  
  verLine(x, y, 1, 5, 2);
}

void cont_ya(int x, int y) {
 
  verLine(x, y, 4, 5, 2);
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
