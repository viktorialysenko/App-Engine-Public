//Global Variables
String transition, nutcracker, seabreeze, vast_and_blue, oath;
int currentSong=0;
boolean autoPlayOn =false;
void setupMusic() {
  minim = new Minim (this); 
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile (path+oath );
  songs[1] = minim.loadFile (path +seabreeze);
  songs[2] = minim.loadFile (path+ transition);
  songs[3] = minim.loadFile (path+nutcracker);
  songs[4] = minim.loadFile (path + vast_and_blue);
  //
  
   
}//End SetupMusic

void drawMusic() {
  print("Current Song Position:", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
  if (songs[currentSong].position() >= songs[currentSong].length()) {
    if (currentSong == 4) {
       currentSong = 0;
     } else {
       currentSong++;
     }
     songs[currentSong].play();
  }
}//End drawMusic

void playPause() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else {
    songs[currentSong].position();
    songs[currentSong].play();
  }
}

void nextSong() {
  if (  songs[currentSong].isPlaying()) {
   songs[currentSong].pause();
     songs[currentSong].rewind();
     if (currentSong == 4) {
       currentSong = 0;
     } else {
       currentSong++;
     }
     songs[currentSong].play();
}
}

void fastForward() {
  songs[currentSong].skip(1000);
} //End Forward

void fastReverse() {
  songs[currentSong].skip(-1000);
}//End Reverse

 void loopButton() {
final int endOfSong2 = songs[currentSong].length();
 final int endOfSong = songs[currentSong].position();
 if(endOfSong == endOfSong2){
     songs[currentSong].rewind();
 songs[currentSong].loop();
  if ( songs[currentSong].isPlaying() ) {
  } else {
    songs[currentSong].position();
    songs[currentSong].play();
  }
 }
 }//End LoopButton

void previousSong() {
  if (  songs[currentSong].isPlaying()) {
    songs[currentSong].pause();
      songs[currentSong].rewind();
    if (currentSong == 0) {
      currentSong = 4;
    } else {
      currentSong--;
    }
    songs[currentSong].play();
  }
}//End PreviousSong
void mute() {
   if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else {
      songs[currentSong].mute();
    }
}//end muteIsPressed

void concatenationOfMusicFiles() {
  path= "data/";
  oath= "Lovers' Oath.mp3";
  vast_and_blue="Vast and Blue.mp3";
  seabreeze="Whispering Seabreeze.mp3";
  transition="transition.wav";
  nutcracker="nutcracker.mp3";
}//End Concatenation

//End Music Program
