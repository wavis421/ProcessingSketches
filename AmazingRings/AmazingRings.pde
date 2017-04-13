int x1 = 250;
int x2 = 750;
int speed = 2;


void setup(){
size(1000,500);
}


void draw(){
  background(255,0,255);
     noFill();
  //for(int i = 400; i>0;i-=10){
  for (int i = 0; i < 400; i+=10) {
    ellipse(x1,250,i,i);
    ellipse(x2,250,i,i);
  }
  x1+=speed;
  x2-=speed;
  if (x1>750 || x1 <250){
  speed = -speed;
  }
}



