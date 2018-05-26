// waw
void wa(int x, int y) {

  verLine(x, y, 1, 6, 2);
  verLine(x, y, 2, 6, 2);
  diaLine(x, y, 1, 8, 3, 1);
  horLine(x, y, 3, 10, 4); 

}

void wa_hamza(int x, int y) {
  hamza(x, y, 1, 1);
  wa(x,y);
  
}
