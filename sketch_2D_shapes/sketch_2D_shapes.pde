void setup() {
  size (500, 500);
  fill (255, 0, 0);
}

void draw() {
    
    background (0, 0, 255);
    noStroke();

    fill (0, 0, 100);
    triangle (250, 0, 0, 300, 500, 300);
  
    if (mousePressed)
    {
      fill (0, 255, 0);
      ellipse(mouseX, mouseY, 30, 50);
    }
    else
    {
      fill (255, 0, 0);
      ellipse(250, 250, 30, 50);
    }
    
    fill (0, 0, 0);
    text ("Wendy", 450, 480);
}