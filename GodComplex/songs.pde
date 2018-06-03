void loadSong(int num) {
  s[num] = minim.loadFile(songname[num]);
  fft[num] = new FFT(s[num].bufferSize(), s[num].sampleRate());
  s[num].loop(0);
}
