void setup() {
   size(400, 400);
    fill (255,0,0); 
}

void draw () {
   ellipse(50, 50, 50, 50);
   ellipse (160, 50, 50, 50);
   
   if (mousePressed) {
     fill (random(255), random(255), random(255));
   }
  
}
