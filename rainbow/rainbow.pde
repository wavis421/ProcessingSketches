PImage rainbow;
PImage unicorn;

void setup() {
  size (800,400);
  rainbow = loadImage("rainbow.png");  
  //size(rainbow.width, rainbow.height);
  rainbow.resize(800,400);
  
  background (rainbow);
 
  unicorn = loadImage("unicorn.png"); 
}

void draw() {
  
  if (mousePressed) {
    background (rainbow);
    image (unicorn, mouseX, mouseY);
  }
}
