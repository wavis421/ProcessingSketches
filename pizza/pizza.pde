void setup () {
  size (600,600);
  fill (238, 170, 119);
  ellipse (250, 250, 400,400);
  fill (230, 0, 0);   // red
  ellipse (252, 252, 350, 350);
  fill (221,255,102);   // yellow
  ellipse (254, 254, 300, 300);
  
}

void draw () {
  PImage pepperoni = loadImage("pepperoni.gif");
  pepperoni.resize(25,25);
  image(pepperoni,300,300);
  
  PImage mushroom = loadImage("mushroom.gif");
  mushroom.resize(25,25);
  image(mushroom, 200,250);
  
  if (mousePressed && (mouseButton == LEFT)) {
    image(pepperoni, mouseX, mouseY);
  }
  if (mousePressed && (mouseButton == RIGHT)) {
    image (mushroom, mouseX, mouseY);
  }
  
  
}
