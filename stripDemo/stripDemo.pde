int i = 0;
String filename = "C:\\Users\\rd\\Documents\\Processing\\stripDemo\\demo" ;

void settings() {
  size(640,480) ;
}

void setup(){
  background(255) ;
  frameRate(10) ;
  noStroke() ;
  strokeWeight(30) ;
}

void draw(){
  stroke(color(int(random(255)),int(random(255)),int(random(255)),50)) ;
  int x1 = i ;
  int y1 = 0 ;
  int x2 = int(random(640)) ;
  int y2 = 480 ;
  line(x1,y1,x2,y2) ;
  
  //if (keyPressed == true)
  //{
  save(filename + "_" + str(i) + ".png") ;
  //}
  if ( i < width)
  {
    i = i + 5 ;
  }
  else
  {
    i = 0 ;
  }
}