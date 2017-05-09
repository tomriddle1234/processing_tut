//定义颜色
color c1 = #F57777 ;
color c2 = #F577AD ;
color c3 = #F577E6 ;
color c4 = #CA77F5 ;
color c5 = #9177F5 ;
color c6 = #7795F5 ;
color c7 = #77CEF5 ;
color c8 = #77F5E3 ;
color c9 = #77F5AA ;
color c10 = #7CF577 ;
color c11 = #B5F577 ;
color c12 = #EEF577 ;
color c13 = #F5C277 ;

//实验动态线条粗细
float x = 1.0 ;
float step = 0.2 ;


void setup(){
  //设置画板大小
  size(800,600) ;
  //更改背景颜色
  background(#A6B2DE) ;
  //改变线条颜色
  stroke(255,0,0,50) ;

}

void draw(){
  
    //调整线条粗细
  strokeWeight(x);
  //尝试画线
stroke(c1,70);
line(1300,0,0,1300) ;
stroke(c2,70);
line(1200,0,0,1200) ;
stroke(c3,70);
line(1100,0,0,1100) ;
stroke(c4,70);
line(1000,0,0,1000) ;
stroke(c5,70);
line(900,0,0,900) ;
stroke(c6,70);
line(800,0,0,800) ;
stroke(c7,70);
line(700,0,0,700) ;
stroke(c8,70);
line(600,0,0,600) ;
stroke(c9,70);
line(500,0,0,500) ;
stroke(c10,70);
line(400,0,0,400) ;
stroke(c11,70);
line(300,0,0,300) ;
stroke(c12,70);
line(200,0,0,200) ;
stroke(c13,70);
line(100,0,0,100) ;
//画反向
stroke(c1,70);
line(800,0,800,0);
stroke(c2,70);
line(700,0,800,100);
stroke(c3,70);
line(600,0,800,200);
stroke(c4,70);
line(500,0,800,300);
stroke(c5,70);
line(400,0,800,400);
stroke(c6,70);
line(300,0,800,500);
stroke(c7,70);
line(200,0,800,600);
stroke(c8,70);
line(100,0,800,700);
stroke(c9,70);
line(0,0,800,800);
stroke(c10,70);
line(-100,0,800,900);
stroke(c11,70);
line(-200,0,800,1000);
stroke(c12,70);
line(-300,0,800,1100);
stroke(c13,70);
line(-400,0,800,1200);
stroke(c1,70);
line(-500,0,800,1300);

x = x + step ;
}