HColorPool colors;

void setup() {
  size(640, 640);
  H.init(this).background(#202020);
  smooth();

  colors = new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095A8, #00616F, #FF3300, #FF6600);
  
  int starScale = 200;
  int starOffest = 20;

  for(int i = 0; i<9; ++i) {
    int ranEdges = round(random(5, 10));
    float ranDepth = random(0.2, 0.6);
    
    for (int j = 0; j<9; ++j) {
      int row = (int) Math.floor(i / 3);
      int col = i % 3;

      HPath d = (HPath) H.add( new HPath().star(ranEdges, ranDepth) )
        .size(starScale)
        .noStroke()
        .fill( colors.getColor() )
        .anchorAt(H.CENTER)
        .loc(col*200+120, row*200+120);
      ;

      new HOscillator()
        .target(d)
        .property(H.ROTATION)
        .range(-20, 20)
        .speed(0.4)
        .freq(8)
        .currentStep(j)
      ;

      starScale -= starOffest;
    }
    starScale = 200;
  }
}

void draw() {
  H.drawStage();
}