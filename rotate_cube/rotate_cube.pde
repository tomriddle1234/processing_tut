color[] c = {#CB99FF,#6187F1,#496ED7, #FFC969,#FF9999};

//定义位移变量
float x = 0.0 ;

//建立一个设置函数
void setup(){
  //设置画布大小
  size(800,600) ;
  //设置背景颜色
  background(#67ad65);
  //去掉勾边
  noStroke();
  //矩形绘制从中心点开始
  rectMode(CENTER);
}

//建立绘图函数
void draw(){
  //用半透明覆盖画布的大矩形重新涂画布
  fill(#202020,30);
  rect(0,0,2*width, 2*height);
  //改变原点到画布中央
  translate(width/2  , height/2 );
  
  float factor = 0.0 ;
  //判断正向反向
  if (int(2*x) % 360 < 180){
    //正向
    factor = float(int(2*x) % 180) / 180.0 ;
  }
  else {
    //反向
    factor = 1.0 - float(int(2*x) % 180) / 180.0 ;
  }
  
  //计算需要绘制的颜色
  color rc = lerpColor(c[0],c[4], factor);
  
  //重新定义旋转矩形的颜色
  fill(rc);
  //旋转下面图形，每次增加 n 倍的1度，换算成弧度单位
  rotate(0.25 * PI + 2 * x * PI / 180) ;
  
  //再次进行位移
  translate(0,200);
  
  //画矩形
  rect(0,0,200,200);
  //增加x变量，作为角度增量计算的变量
  x = x + 1.0 ;
}