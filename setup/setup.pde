/* 
Part of the ReCode Project (http://recodeproject.com)
Based on "Untitled 4" by Jerusalem Programme
Originally published in "Computer Graphics and Art" vol2 no3, 1977
Copyright (c) 2018 Mohammed Fahad - OSI/MIT license (http://recodeproject/license).
*/


int m = 5; // margin
int bds = 3; // draw block size
int brs = 5; // real block size
int bw = 9; // width of a block
int bh = 12; // height of a block
int s = bw - 1; // shift factor to start from right (Arabic is right to left)
void setup() {
  size(505, 670, P2D); 
  background(10);
  noLoop();
}
