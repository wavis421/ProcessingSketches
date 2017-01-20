void setup() {
  size(400,200);
  background(0,255,255);
  ellipseMode(LEFT);
}

void draw() {
  background(0,255,255);
  int distanceBetween = 150;
  fill (255,255,255);
  ellipse (100,75,100,50);
  ellipse (100 + distanceBetween,75,100,50); 
  
  fill (0,0,0);
    if (mouseX < 100) mouseX = 100;
    if (mouseX > 170) mouseX = 170;
    if (mouseY < 75) mouseY = 75;
    if (mouseY > 95) mouseY = 95;
    ellipse (mouseX, mouseY, 30,30);
    ellipse(mouseX + distanceBetween, mouseY, 30, 30);
}
