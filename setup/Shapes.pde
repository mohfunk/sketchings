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



void ha1(int x, int y) {
  horLine(x,y,3,3,5);
  block(x,y,4,4);
  diaLine(x,y,5,4,3,1);
  block(x,y,7,7);
  diaLine(x,y,5,10,3,-1);
  block(x,y,4,10);
  diaLine(x,y,1,8,3,1);
}

void ha2(int x, int y) {
  horLine(x,y,3,3,5);
  block(x,y,4,4);
  diaLine(x,y,5,4,3,1);
  block(x,y,7,7);
  diaLine(x,y,5,10,3,-1);
  block(x,y,4,10);
  diaLine(x,y,1,7,3,-1);
  diaLine(x,y,2,9,2,1);
}

void ha3(int x, int y) {
  horLine(x, y, 2, 7, 6);
  diaLine(x,y,1,7,3,-1);
  horLine(x,y,4,5,2);
  block(x,y,2,8);
  
  
}





void line3() {
    /* Line 3 */
   for(int i = 11; i >= 10; --i) {
    horLine(i, 3, 1, 7, 7);
  }
  //1
  verLine(11, 3, 4, 5, 2);
  zHorLine(11,3,3,3,-1);
  //2
  zHorLine(10,3,3,3,-1);
  verLine(10, 3, 1, 5, 2);
  verLine(10, 3, 7, 5, 2);
  //3
  ha3(9,3);
  block(9, 3, 4, 9);
  //4
  ha1(8,3);
  block(8, 3, 4, 7);
  //5
  ha2(7,3);
  block(7, 3, 4, 7);
  //6
  ha3(6,3);
  //7
  ha1(5,3);
  //8
  ha2(4,3);
  //9
  ha3(3,3);
  block(3, 3, 4, 3);
  //10
  ha1(2,3);
  block(2, 3, 5, 1);
  //11
  block(1, 3, 5, 1);
  ha2(1,3);
}
  
  
