import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;

int songs = 1;
AudioPlayer[] s = new AudioPlayer[songs];
FFT[] fft = new FFT[songs];
String[] songname = {"gc.mp3"};
int snum = 0;
float[] spec = { 0.010, 0.035, 0.060, 0.120, 0.240, 0.360, 0.480, 0.650, 0.820, 1.000 };
float[] scor = { 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000 }; 
float[] prev = { 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000 };
int[]   decrate = { 1000, 800, 0600, 0300, 0150, 0050, 0010, 0005, 0002, 0001 };

PFont f;
float phi = (1 + sqrt(5))/2;
float q = (2*phi) + 1;
int wid5 = 0;
int pentnum = 10;
int rectnum = 10;
Pentagram[] pnt = new Pentagram[pentnum];
Rectangle[] rct = new Rectangle[pentnum];
int[] penAlpha = {5, 10, 25, 50, 75, 90 , 100, 130, 150, 200};
int[] penScale = {0, 10, 20, 30, 50, 60 , 90, 134, 200, 405};
int[] penWidth = {2, 3, 4, 8, 2, 1, 9, 0, 6, 7};
float[] recScale = {0.5, 1, 2, 3, 4, 5, 6, 7, 10, 20};
int[] recAlpha = {2*2*1, 2*2*2, 2*2*4, 2*2*8, 2*2*16, 32, 64, 128, 256, 512};

boolean debug = true;
