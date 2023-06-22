import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
int appWidth, appHeight;
float pauseX1, pauseY1, pauseY2, pauseX2, pauseWidth, pauseHeight;
float circleX, circleY, radius; 
float pauseScaleWidth, pauseScaleHeight, centerX;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, next2X1,next2Y1, nextWidth, nextHeight;
float backX1, backY1, backX2, backY2, backX3, back3, back2X1,back2Y1,backWidth, backHeight;
color grey=#D8D8D8, white =#FFFFFF;;
float rewind1X1, rewind1Y1,rewind1X2, rewind1Y2, rewind1X3, rewind1Y3;
float rewind2X1, rewind2Y1,rewind2X2, rewind2Y2, rewind2X3, rewind2Y3;
float reverse1X1, reverse1Y1,reverse1X2, reverse1Y2, reverse1X3,reverse1Y3;
float reverse2X1,reverse2Y1,reverse2X2, reverse2Y2, reverse2X3, reverse2Y3;
float loopX, loopY, loopWidth, loopHeight, loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3;
float loop2X1, loop2Y1, loop2X2, loop2Y2, loop2X3, loop2Y3;
float line1X1, line1Y1, line1X2, line1Y2, line2X1, line2Y1, line2X2, line2Y2;
float rectLX,rectLY, rectLWidth, rectLHeight;
float rectMX,rectMY, rectMWidth, rectMHeight;
float progressBarX1, progressBarY1, progressBarWidth,progressBarHeight, progressBarX2, progressBarY2;
float currentTimeStringX,currentTimeStringY, currentTimeStringWidth, currentTimeStringHeight;
//
float rectX,rectY, rectWidth, rectHeight;
float rectNX,rectNY, rectFX,rectFY, rectPX,rectPY, rectRX,rectRY;
float muteRectX1, muteRectY1,muteRectWidth, muteRectHeight,muteTriangleX2, muteTriangleY2, muteTriangleX3, muteTriangleY3, muteTriangleX1, muteTriangleY1;
float rectNWidth, rectFWidth;
boolean stopHoverOver=false, loopIsPressed=false, muteIsPressed=false;
boolean musicIsPlaying;
float lineX1,lineY1, lineX2,LineY2, line3X1,line3Y1, line3X2,Line3Y2;
///
color targetColor=0;
color currentColor=0;
float amount=0;
float poweredByX,poweredByY,poweredByWidth, poweredByHeight;
//
PFont lucida;
//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[5]; //creates "Play List" variable holding extenstions WAV, AIFF, AU, SND, and MP3
//
void setup() {
 setupOS_level();
 size(1200,700);//width, height
    lucida = createFont("Candara", 48);
   noSmooth();
  appWidth=width;
  appHeight=height;
  setupPopulation();
 setupMusic();
 songs[currentSong].loop(0);
  /////////
}//End setup
//
void draw() {
  background(#FFFFFF);
     backgroundDraw() ;
    // fill(white);
   //rect(rectX,rectY, rectWidth, rectHeight); 
  // rect(rectNX,rectNY, rectNWidth, rectHeight);
  // rect(rectFX,rectFY, rectFWidth, rectHeight);
  //rect(rectPX,rectPY, rectNWidth, rectHeight);
   //rect(rectRX,rectRY, rectFWidth, rectHeight);
  // rect(rectLX,rectLY, rectLWidth, rectLHeight);
  //rect(rectMX,rectMY, rectMWidth, rectMHeight);
 //////
  fill(grey);
  noStroke();
  drawMusicButtons() ;
    drawMusic();
   
    progressBarDraw();
    //////
      textAlign(CENTER, CENTER); 
  textFont(lucida, 20);
  fill(#000000);
  text("©powered by viktorialysenko on GitHub",poweredByX,poweredByY,poweredByWidth, poweredByHeight);
}//End draw
//
void keyPressed() {

  mute();

}//End keyPressed
//
void mousePressed() {
  if ( mouseX>=rectNX && mouseX<=rectNX+rectNWidth && mouseY>=rectNY && mouseY<=rectNY+rectHeight ) {
  nextSong();
}
 if ( mouseX>=rectFX && mouseX<=rectFX+rectFWidth && mouseY>=rectFY && mouseY<=rectFY+rectHeight ) {
  fastForward();
}
if ( mouseX>=rectRX && mouseX<=rectRX+rectFWidth && mouseY>=rectRY && mouseY<=rectRY+rectHeight ) {
  fastReverse();
}

if ( mouseX>=rectX && mouseX<=rectX+rectWidth && mouseY>=rectY && mouseY<=rectY+rectHeight ) {
    if ( musicIsPlaying == false ) {
      musicIsPlaying=true;
    } else {
      musicIsPlaying = false;
    }
  playPause();
}
if ( mouseX>=rectLX && mouseX<=rectLX+rectLWidth && mouseY>=rectLY && mouseY<=rectLY+rectHeight ) {
   if ( loopIsPressed == false ) {
      loopIsPressed=true;
    } else {
      loopIsPressed = false;
    }
  loopButton();
}
if ( mouseX>=rectPX && mouseX<=rectPX+rectNWidth && mouseY>=rectPY && mouseY<=rectPY+rectHeight ) {
  previousSong();
}
if ( mouseX>=rectMX && mouseX<=rectMX+rectMWidth && mouseY>=rectMY && mouseY<=rectMY+rectHeight ) {
   if ( muteIsPressed == false ) {
      muteIsPressed=true;
    } else {
      muteIsPressed = false;
    }
  mute();
}
}//End mousePressed
//
//End Main Program 
