//Global variables
//
void setupPopulation(){
float pauseStartDrawX = appWidth *1/2;
float pauseStartDrawY =appHeight *1/3;
  pauseScaleWidth=1.0/32.0;//used to change x-size
  pauseScaleHeight =1.0/6.0;//used to change y-size
  pauseWidth = appWidth* pauseScaleWidth;
  pauseHeight = appHeight *pauseScaleHeight;
  pauseX1 =pauseStartDrawX-pauseWidth*1.5;
  pauseY1 = pauseStartDrawY;
  pauseX2 = pauseX1 +2*pauseWidth ;
  pauseY2 = pauseY1;
  circleX=pauseStartDrawX;
  circleY=pauseStartDrawY+ 0.5*pauseHeight;
  radius=pauseWidth*5;
  //
  nextX1=pauseX2 +pauseWidth*3;
  nextY1=pauseY1;
  nextX2=nextX1+pauseWidth*2;
  nextY2= nextY1+ pauseHeight*1/2;
  nextX3=nextX1;
  nextY3=nextY2+pauseHeight*1/2;
  next2X1=nextX2-pauseWidth*1/10;
  next2Y1=nextY1;
  nextWidth=pauseWidth*1/3;
  nextHeight=pauseHeight;
  //
  backX1 = pauseX1 - pauseWidth*2;
  backY1 = pauseY1;
  backX2 = backX1- pauseWidth*2;
  backY2 =backY1+ pauseHeight*1/2;
  backX3 = backX1;
  back3 = backY2+ pauseHeight*1/2;
  back2X1 = backX2-pauseWidth*1/10;
  back2Y1= backY1;
  backWidth= nextWidth ;
  backHeight= nextHeight;
  //
  rewind1X1 =nextX1 + pauseWidth*4;;
  rewind1Y1 =nextY1;
  rewind1X2 =rewind1X1+pauseWidth*2;
  rewind1Y2 =nextY2;
  rewind1X3 =rewind1X1;
  rewind1Y3 =nextY3;
  //
  rewind2X1 =rewind1X2;
  rewind2Y1 =rewind1Y1;
  rewind2X2 =rewind1X2+pauseWidth*2;
  rewind2Y2 =rewind1Y2;
  rewind2X3 =rewind2X1;
  rewind2Y3 =rewind1Y3;
  //
  reverse1X1=back2X1 - pauseWidth*2;
  reverse1Y1=backY1;
  reverse1X2=reverse1X1- pauseWidth*2;
  reverse1Y2=backY2;
  reverse1X3=reverse1X1;
  reverse1Y3=back3;
  //
  reverse2X1 =reverse1X2;
  reverse2Y1 =reverse1Y1;
  reverse2X2 =reverse1X2 -  pauseWidth*2;
  reverse2Y2 =reverse1Y2;
  reverse2X3 =reverse1X2;
  reverse2Y3 =reverse1Y3;
  //
  loopX= backX2;
  loopY=back2Y1+pauseHeight*2;
  loopWidth=radius*3/4;
  loopHeight=radius*1/3.7;
  //
   loop1X1=backX2;
   loop1Y1=loopY-pauseWidth*6/5;
   loop1X2=loop1X1+ pauseWidth*1/2;
   loop1Y2=loop1Y1+pauseWidth*1/2;
   loop1X3=loop1X1;
   loop1Y3=loop1Y2+pauseWidth*1/2;
   //
   loop2X1=loop1X1;
   loop2Y1=loop1Y3+pauseWidth*1/3;
   loop2X2=loop1X1-pauseWidth*1/2;
   loop2Y2=loop2Y1+pauseWidth*1/2;
   loop2X3=loop2X1;
   loop2Y3=loop2Y2+pauseWidth*1/2;
   //
 
  muteRectWidth= pauseWidth*1/2;
   muteRectHeight=pauseHeight*1/5;
   muteRectX1= nextX1;
   muteRectY1= loopY-muteRectHeight*1/2; 
   //
   muteTriangleX1 =muteRectX1;
   muteTriangleY1 =muteRectY1 +muteRectHeight*1/2;
   muteTriangleX2 =muteTriangleX1+pauseWidth;
   muteTriangleY2 =muteRectY1-pauseWidth*3/4;
   muteTriangleX3 = muteTriangleX2;
   muteTriangleY3 = muteRectY1 + muteRectWidth+pauseWidth*3/4;
   //
  lineX1=muteTriangleX1 +muteRectWidth*3;
  lineY1=muteRectY1; 
  lineX2=lineX1+muteRectWidth;
  LineY2=lineY1+muteRectHeight; 
  //
  line3X1=lineX2;
  line3Y1=lineY1;
  line3X2=lineX1;
  Line3Y2=LineY2;
//
   line2X1=line1X1;
  line2Y1=line1Y2;
  line2X2=line1X2;
  line2Y2=line1Y1;
  //
  rectX=circleX-radius*1/2;
  rectY=circleY-radius*1/2;
  rectWidth=radius;
  rectHeight=radius;

  rectY=pauseY1;
  rectWidth=pauseWidth*3;
  rectHeight=pauseHeight;

  //
  rectNX=nextX1;
  rectNY=nextY1;
  rectNWidth=pauseWidth*2+pauseWidth*1/3;
  rectFWidth=pauseWidth*4;
  rectFX=rewind1X1;
  rectFY=rewind1Y1;
  rectPX=back2X1;
  rectPY=back2Y1;
  rectRX=reverse2X2;
  rectRY=reverse2Y1;
  //
  rectLX=loopX-loopWidth*1/2;
  rectLY=loopY-loopHeight*1/2;
  rectLWidth=loopWidth; 
  rectLHeight=loopHeight;
 //
  rectMX=muteRectX1;
  rectMY=muteRectY1 -pauseWidth*3/4;
  rectMWidth=pauseWidth;
  rectMHeight=muteRectHeight+ pauseWidth*3/2;
  //
 poweredByWidth=appWidth*1/3;
 poweredByHeight=appHeight*1/10;
 poweredByX=appWidth-poweredByWidth;
 poweredByY=appHeight-poweredByHeight;
}//End SetupPopuation
