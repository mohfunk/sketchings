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
