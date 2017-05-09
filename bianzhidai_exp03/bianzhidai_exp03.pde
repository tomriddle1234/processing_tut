//定义颜色
color[] c = {#F57777,#F577AD,#F577E6,#CA77F5,#9177F5,
             #7795F5,#77CEF5,#77F5E3,#77F5AA,#7CF577,
             #B5F577,#EEF577,#F5C277
            } ;
//先定义一个变化的笔触宽度
float w = 20.0;
float change = 1.0;

void setup(){
  //设置画板大小
  size(800,600) ;
  //更改背景颜色
  background(#A6B2DE) ;
  //改变线条颜色
  stroke(255,0,0,50) ;
  //调整线条粗细
  strokeWeight(45.0);
}

void draw(){
  //先涂一下画布
  background(#A6B2DE);
  //设置新的笔触宽度
  strokeWeight(w);
  
  //尝试画线
  //从 1300 到 100 每次 减 100
  int j = 0;
  for (int i = 1300 ; i >= 100 ; i = i - 100){
    stroke(c[j],50) ;
    line(i, 0, 0, i);
    j = j + 1;
  }
  //第二个数永远是0， 第三个数永远是800，
  //第一个和第四个加和是800，第四个数从0 到 1300 每次加100
  //重置j 为0
  j = 0;
  for (int i = 100 ; i <= 1300 ; i = i + 100){
    stroke(c[j],50) ;
    line(800 - i, 0, 800, i) ;
    j = j + 1 ;
  }
  //改变笔触宽度
  //判断笔触变化改变值的符号
  w = w + change ;
  if (w == 300.0){
    change = -change ;
  }
  if (w == 0.0){
    change = -change;
  }
  
  println(w);
}