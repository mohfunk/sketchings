import ddf.minim.*;
import ddf.minim.analysis.*;


Minim minim;
AudioPlayer s;
FFT fft;

float[] spec = { 0.010, 0.035, 0.060, 0.120, 0.240, 0.360, 0.480, 0.650, 0.820, 1.000 };
float[] scor = { 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000 }; 
float[] prev = { 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000 };
int[]   decrate = { 1000, 800, 0600, 0300, 0150, 0050, 0010, 0005, 0002, 0001 };

PFont f;
float phi = (1 + sqrt(5))/2;
float q = (2*phi) + 1;
int wid5 = 0;

Pentagram pent;
boolean debug = true;
