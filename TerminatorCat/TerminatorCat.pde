//We’re going to make a cat that shoots lazers out of it’s eyes when you press the space bar.
import ddf.minim.*;                

AudioSample sound;
int locX = 290, locY = 250;
int accelerate = 1;
PImage catPic;
  
void setup() {
  size (800,600);
  catPic = loadImage("CatPic.jpg");
  catPic.resize(800, 600);  // to match your size
  background(catPic);
  
  Minim minim = new Minim(this);        
  sound = minim.loadSample("laser-shot.wav");
}

void draw() {
  fill (255, 0, 0);
  noStroke();
  ellipse (locX, locY, 50, 50);
  ellipse (locX + 165, locY, 50, 50);
  
}

void keyPressed() {
  if (accelerate == 1)
     sound.trigger();
     
  locX += accelerate;
  locY += accelerate;
  accelerate += 1;
  println (locX + ", " + locY);
  
  if (locY > 600)
  {
    locX = 290;
    locY = 250;
    accelerate = 1;
    background(catPic);
  }
}


