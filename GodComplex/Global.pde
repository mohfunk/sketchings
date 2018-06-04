import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;

int songs = 3;
AudioPlayer[] s = new AudioPlayer[songs];
FFT[] fft = new FFT[songs];
String[] songname = { "s.mp3", "GCC.mp3", "td.mp3" };
int snum = 1;
float[] spec = { 0.010, 0.035, 0.060, 0.120, 0.240, 0.360, 0.480, 0.650, 0.820, 1.000 };
float[] scor = { 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000 }; 
float[] prev = { 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000 };
int[]   decrate = { 1000, 800, 0600, 0300, 0150, 0050, 0010, 0005, 0002, 0001 };

PFont f;
float phi = (1 + sqrt(5))/2;
float q = (2*phi) + 1;
int wid5 = 0;
int pentnum = 10;
Pentagram[] pnt = new Pentagram[pentnum];
int[] penAlpha = {5, 10, 25, 50, 75, 90 , 100, 130, 150, 200};
int[] penScale = {0, 10, 20, 30, 50, 60 , 90, 134, 200, 405};
int[] penWidth = {2, 3, 4, 8, 2, 1, 9, 0, 6, 7};
boolean debug = true;
