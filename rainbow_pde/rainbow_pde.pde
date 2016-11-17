PImage rainbow;
PImage unicorn;

void setup() {
  // 1. Find an image of a rainbow, save it, and drop it onto this sketch.
  rainbow = loadImage("rainbow.png"); 
  size (400, 204);
  rainbow.resize (400, 204);
  
  // 3. Set the rainbow as the background. Behold the rainbow!
  background (rainbow);

  // 4. Find an image of a unicorn, save it, and drop it onto this sketch.  
  unicorn = loadImage("unicorn.gif"); 
  unicorn.resize (unicorn.width/5, unicorn.height/5);
}

void draw() {
  if (mousePressed) 
  {
    background (rainbow);
    image (unicorn, mouseX, mouseY);
  }

  // 8. You may want to make your unicorn transparent. See these instructions: bit.ly/pretty-unicorn
}