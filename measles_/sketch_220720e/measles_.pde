 
//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter,yCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter, xleftPupil, yleftPupil,  xrightPupil, yrightPupil, PupilDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000;
Boolean nightMode=true;
 color backgroundColour;
//
void setup()
{
 Population();
}
void draw()

{
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xleftPupil, yleftPupil, PupilDiameter, PupilDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  ellipse(xrightPupil, yrightPupil, PupilDiameter, PupilDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension);
  rect(xCenter-faceRadius, 2,0*faceRadius,smallerDimension);
  fill(red);
  noStroke();
  measleDiameter =random(smallerDimension*1/50+smallerDimension*1/65);
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1);
  fill(resetWhite);
  
  //
}
  //
//End draw
//\
//End keyPressed
//
void mousePressed() {
  if(mouseButton== LEFT){ 
    backgroundColour = color(random(255), random(255), random(255) );
    background( backgroundColour);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}
  if(mouseButton==RIGHT){ backgroundColour = color( random(255), random(255), 0 );
    background( backgroundColour );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}
  if  (nightMode == false){//switch
  nightMode = true;
  } else{
    nightMode = false;
}//End mousePressed
};
