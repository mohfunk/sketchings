/* 
Part of the ReCode Project (http://recodeproject.com)
Based on "Untitled 4" by Jerusalem Programme
Originally published in "Computer Graphics and Art" vol2 no3, 1977
Copyright (c) 2018 Mohammed Fahad - OSI/MIT license (http://recodeproject/license).
*/


int m = 10; // margin
int bds = 7; // draw block size
int brs = 10; // real block size
int bw = 9; // width of a block
int bh = 12; // height of a block
int s = bw - 1; // shift factor to start from right (Arabic is right to left)
void setup() {
  size(1010, 1340, P2D); 
  background(10);
  stroke(255, 10.0);
  strokeWeight(1);
  noLoop();
}
