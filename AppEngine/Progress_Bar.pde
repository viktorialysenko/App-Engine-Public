void progressBarDraw() {
 rect(progressBarX1, progressBarY1, progressBarWidth, progressBarHeight);
float progress = map(songs[currentSong].position(), 0, songs[currentSong].length(), progressBarX1, progressBarX2);
  stroke(#FFFFFF);
  fill(#FFFFFF);
float progressWidth = progress - progressBarX1;
rect(progressBarX1, progressBarY1, progressWidth, progressBarY2 - progressBarY1);

  int currentTimeMillis = songs[currentSong].position();
  int minutes = int(currentTimeMillis / 1000 / 60);
  int seconds = int((currentTimeMillis / 1000) % 60);  
  //
  int fullLengthMillis = songs[currentSong].length();
  int fullMinutes = int(fullLengthMillis / 1000 / 60);
  int fullSeconds = int((fullLengthMillis / 1000) % 60);
  fill(#000000);
  String currentTimeString = nf(minutes, 2) + ":" + nf(seconds, 2);
  String fullLengthString = nf(fullMinutes, 2) + ":" + nf(fullSeconds, 2);
 
  textAlign(CENTER, CENTER); 
  textFont(lucida, 25);
  text(currentTimeString, currentTimeStringX,currentTimeStringY, currentTimeStringWidth, currentTimeStringHeight);
  println(currentTimeString);
   text(fullLengthString,progressBarX1+ progressBarWidth, currentTimeStringY, currentTimeStringWidth, currentTimeStringHeight);

}
