 float frequency = .001;
float noiseInterval = PI; 


void setup()
{
  size(1000, 1000);
}


void draw()
{ 
  makeMagical();


  for (int i = 0; i < 300; ++i) {
    float x=random(300);
    float y=random(300);
    x=getWormX(i);
    y=getWormY(i);
    fill(frameCount, i, 200);
    ellipse(x, y, 10, 10);
  }
}


void makeMagical() {
  fill( 0, 0, 0, 10 );
  rect(0, 0, width, height);
  noStroke();
}


float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}


float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}





