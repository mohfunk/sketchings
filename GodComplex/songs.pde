

void updateScore() {
   fft[snum].forward(s[snum].mix);
     for(int i = 0; i < 10; ++i) {
         prev[i] = scor[i];
        scor[i] = 0.00;
      }
  for(int i = 0; i < fft[snum].specSize()*spec[0]; i++)
  {
    scor[0] += fft[snum].getBand(i);
  }
   if (prev[0] > scor[0]) {
    scor[0] = prev[0] - decrate[0];
  }
  
  for(int i = 0; i < 9; ++i) {
    for(int j = (int)(fft[snum].specSize()*spec[i]); j < fft[snum].specSize()*spec[i+1]; j++) {
      scor[i+1] += fft[snum].getBand(j);
    }
        if (prev[i+1] > scor[i+1]) {
    scor[i+1] = prev[i+1] - decrate[i+1];
  }
  }
    
}
void loadSong(int num) {
  s[num] = minim.loadFile(songname[num]);
  fft[num] = new FFT(s[num].bufferSize(), s[num].sampleRate());
  s[num].loop(0);
}
