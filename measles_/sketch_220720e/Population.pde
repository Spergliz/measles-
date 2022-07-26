void Population(){//CANVAS will will be added to later
  size(1000, 800); //Landscape
  //
  //Population
  background (xFace);
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4;
  yLeftEye = yCenter-smallerDimension*1/7;
  xleftPupil = xCenter-smallerDimension*1/4;
  yleftPupil = yCenter-smallerDimension*1/7;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/7;
  xrightPupil = xCenter+smallerDimension*1/4;
  yrightPupil = yCenter-smallerDimension*1/7;
  eyeDiameter = smallerDimension*1/8;
  PupilDiameter = smallerDimension*1/16;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/8;
  xLeftNostril = xCenter-smallerDimension*1/8; 
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/8;
  yRightNostril = yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  faceRadius = smallerDimension/2+smallerDimension*1/16;
  measleDiameter = smallerDimension*1/50;
  //
  
 Boolean nightMode=true;
  backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColour );
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);

  //
}//End setup
//
