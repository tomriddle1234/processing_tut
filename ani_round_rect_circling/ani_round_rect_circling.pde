int edgeLen = 100;
int rad = 30 ;
int circle_rad = 100 ;

float ro_step = 0.0 ;

int trailRepeat = 100 ;

//from 0 to 360 , 360 / 5 = 72
color[] colorPool = {#E66F1D,#FFAB6C,#FFB7B6,#2BA9B2,#6CF5FF} ; 
color currentColor ;

color previous = colorPool[4] ;
color next = colorPool[0] ;

void setup(){
  size(800,600);
  background(0);
  noStroke() ;
}

void draw(){
  background(0);
  //draw a rectangle with round corner
  translate(width/2 ,height/2 );

  pushMatrix();
  rotate(ro_step/180.0*PI);
  //translate(0, circle_rad);
  //rect(0,0,edgeLen,edgeLen,rad,rad,rad,rad);
  rectTrail(circle_rad) ;
  popMatrix();
  if (ro_step >= 360.0){
    ro_step = 0.0 ;
  }
  else{    
    ro_step += 1.0;
  }
  
}

//draw a small arc of rect given radius
void rectTrail(float trailRad){
  float arcLen = 1.5 * PI ;

  float arcStep = arcLen / float(trailRepeat);
  float alphaStep = 100.0 / float(trailRepeat);
  for (int i = 1 ; i <= trailRepeat ; ++i){
    pushMatrix() ;
    rotate(arcStep * float(i)) ;
    
    //start calculate color
    int rotateInt = int(ro_step);
    int colorIndex = rotateInt / 72 ;
    if (rotateInt % 72 ==0){
      
      if (colorIndex == 0 || colorIndex == 5){
        previous = colorPool[4];
        next = colorPool[0] ;
      }
      else{
        previous = colorPool[colorIndex - 1];
        next = colorPool[colorIndex];
      }
    }
    //current color is calculated from previous and next
    color currentMax = lerpColor(previous, next, float(rotateInt % 72) / 72.0) ;
    //color endColor ;
    //int currentRotateArea = rotateInt % 72 ;
    //println( colorIndex );
    ////get the end color
    ////if this trail over area
    //if ((rotateInt + trailRepeat) / 72 > colorIndex){
    //  endColor = lerpColor(next, colorPool[colorIndex >= 5 ? 0 : colorIndex], float(rotateInt + trailRepeat - (colorIndex + 1) * 72)/ 72.0) ;
    //}
    ////not over area
    //else{
    //  endColor = lerpColor(previous,next,float((rotateInt+trailRepeat) % 72) / 72.0) ;
    //}
    //color p = lerpColor(currentMax, endColor, float(i)/float(trailRepeat));
    fill(currentMax,alphaStep * float(i));
    
    
    translate(0, trailRad);
    rect(0,0,edgeLen,edgeLen,rad,rad,rad,rad);
    popMatrix() ;
  }
  
}

void defineColors(){
}