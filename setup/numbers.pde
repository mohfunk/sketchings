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
