void setup () {
  size(500,500);
}

void draw () {
  fill (0,255,0);
 ellipse (200, 200, 100, 100); 
  ellipse (350,200,100,100);
  fill (0,0,0);
    if (mousePressed) {
   fill (mouseX % 255, mouseY % 255, (mouseX + mouseY) % 255); 
  }
  ellipse(210, 210, 30, 30);
  ellipse(360, 210, 30, 30);

}
