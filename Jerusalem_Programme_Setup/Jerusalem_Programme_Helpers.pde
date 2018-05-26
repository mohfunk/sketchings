void block(int x, int y, int sx, int sy) {
	noFill();
	stroke(255);
	strokeWeight(1);
	rect(m + (brs * (s - 1)) - (brs * (sx-1)) + ((brs * bw) * (x-1)), 
			m + brs +  (brs * (sy-1)) + ((brs * bh) * (y-1)),
			bds,
			bds);

}
void hamza(int x, int y, int sx, int sy) {
	block(x, y, sx + 0, sy + 0);
	block(x, y, sx + 1, sy + 0);
	block(x, y, sx + 1, sy + 1);
	block(x, y, sx + 2, sy + 2);
	block(x, y, sx + 1, sy + 2);
	block(x, y, sx + 0, sy + 2);
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

// (0, -1) , (0, 1) , (-1, 0), (1, 0)

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

void wa(int x, int y) {

	verLine(x, y, 1, 6, 2);
	verLine(x, y, 2, 6, 2);
	diaLine(x, y, 1, 8, 3, 1);
	horLine(x, y, 3, 10, 4); 

}
