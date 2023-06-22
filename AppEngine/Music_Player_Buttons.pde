void drawMusicButtons() {
  
 if ( mouseX>=rectX && mouseX<=rectX+rectWidth && mouseY>=rectY && mouseY<=rectY+rectHeight )
  {
    println("Hovering Over Stop Button");
    fill(#1C481E);  
  } else
  {
    println(""); 
 fill(grey);
  }//End Hoverover Feature
  circle(circleX, circleY, radius) ; 
  //
  if ( musicIsPlaying == false ) {
  fill(1);
  rect(pauseX1,pauseY1, pauseWidth, pauseHeight);
  rect(pauseX2,pauseY2, pauseWidth, pauseHeight);
  fill(1);
    } else {
        fill(1);
    triangle(pauseX1+pauseWidth*1/2, pauseY1, pauseX2+pauseWidth,pauseY1+pauseHeight/2,pauseX1+pauseWidth/2, pauseY1+pauseHeight);
        fill(1);
    }
 
  ///////////////////////////////////Next Button
   if ( mouseX>=rectNX && mouseX<=rectNX+rectNWidth && mouseY>=rectNY && mouseY<=rectNY+rectHeight )
  {
    println("Hovering Over Next Button");
   fill(#1C481E);
  } else
  {
    println("");
  }
  triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3) ;
  rect(next2X1,next2Y1, nextWidth,nextHeight);
  fill(1);
  ////////////////////////////////////////Back button
   if ( mouseX>=rectPX && mouseX<=rectPX+rectNWidth && mouseY>=rectPY && mouseY<=rectPY+rectHeight )
  {
    println("Hovering Over Back Button");
   fill(#1C481E);
  } else
  {
    println("");
  }
  triangle(backX1, backY1, backX2, backY2, backX3, back3) ;
  rect(back2X1,back2Y1,backWidth, backHeight);
  fill(1);
  ////////////////////////////////////////Rewind Button
  if ( mouseX>=rectFX && mouseX<=rectFX+rectFWidth && mouseY>=rectFY && mouseY<=rectFY+rectHeight )
  {
    println("Hovering Over Forward/Rewind Button");
   fill(#1C481E);
  } else
  {
    println("");
  }
  triangle(rewind1X1, rewind1Y1,rewind1X2, rewind1Y2, rewind1X3, rewind1Y3);
  triangle(rewind2X1, rewind2Y1,rewind2X2, rewind2Y2, rewind2X3, rewind2Y3);
    fill(1);
  //////////////////////////////////Reverse Button
   if ( mouseX>=rectRX && mouseX<=rectRX+rectFWidth && mouseY>=rectRY && mouseY<=rectRY+rectHeight )
  {
    println("Hovering Over Reverse Button");
   fill(#1C481E);
  } else
  {
    println("");
  }
    triangle(reverse1X1, reverse1Y1,reverse1X2, reverse1Y2, reverse1X3,reverse1Y3);
  triangle(reverse2X1,reverse2Y1,reverse2X2, reverse2Y2, reverse2X3, reverse2Y3);
  
  //////Loop/////////////////////////////////////////////////////////////////////
  fill(grey);
  strokeWeight(10);
  stroke(1);
  ellipse(loopX, loopY, loopWidth, loopHeight);
  strokeWeight(1);
   if ( mouseX>=rectLX && mouseX<=rectLX+rectLWidth && mouseY>=rectLY && mouseY<=rectLY+rectLHeight )
 {
     fill(#1C481E);
  stroke(#1C481E);
    println("Hovering Over Loop Button");
    } else {
       fill(grey);
    }
    if (loopIsPressed==true){
      fill(#1C481E);
        stroke(#1C481E);
  }else{
  fill(grey);
}
   ellipse(loopX, loopY, loopWidth, loopHeight);
   fill(1);
   triangle(loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3);
  triangle(loop2X1, loop2Y1, loop2X2, loop2Y2, loop2X3, loop2Y3);
  fill(1);
    if ( mouseX>=rectMX && mouseX<=rectMX+rectMWidth && mouseY>=rectMY && mouseY<=rectMY+rectMHeight )
  {
    println("Hovering Over Mute Button");
    fill(#1C481E);  
      stroke(#1C481E);
  } else
  { }
    rect( muteRectX1, muteRectY1,muteRectWidth, muteRectHeight );
  triangle(muteTriangleX1, muteTriangleY1, muteTriangleX2, muteTriangleY2, muteTriangleX3, muteTriangleY3);
   if( muteIsPressed == true  ){muteButtonDrawing();}

 }//End drawMusicButtons SupProgram
 
 void muteButtonDrawing( ){
 strokeWeight(5);
         line(lineX1,lineY1, lineX2,LineY2);
    line(line3X1,line3Y1, line3X2,Line3Y2);
strokeWeight(1);
//reset();
 }//end
