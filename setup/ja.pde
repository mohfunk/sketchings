void cont_ja(int x, int y) {
  cont_ha(x,y);
  block(x, y, 4, 9);
}

void sep_ja(int x, int y) {
  sep_ha(x,y);
  block(x,y, 4, 7);
}


void end_ja(int x, int y) {
  end_ha(x,y);
  block(x,y, 4, 7);
}
