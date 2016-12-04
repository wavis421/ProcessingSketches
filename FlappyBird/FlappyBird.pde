import ddf.minim.*;


int birdX = 100;
int birdY = 50;
double birdYVelocity = 0;
int birdWidth = 20;
int birdHeight = 20;
double gravity = 0.5;


int pipe1X = -100;
int pipe1XVelocity = -5;
int pipe1Y = 0;


int pipe2X = -100;
int pipe2XVelocity = -5;
int pipe2Y = 0;


int pipeWidth = 50;
int pipeHeight = 500;


boolean lose = false;


Minim minim;
AudioSample sound;


void setup()
{
  size(400,500);
  minim = new Minim (this);   
 //sound = minim.loadSample("flap 3.wav",128);
}


void draw()
{
  background(200,200,255);
 //4 Change the velocity of the bird
  birdY += birdYVelocity;
  //5 Give the bird gravity
  birdYVelocity += gravity;
  fill(255, 255, 0);
   //3 Make the bird fall down
  ellipse(birdX, birdY, birdWidth, birdHeight);
 


 
  // MOVE PIPES LEFT TO RIGHT
  pipe1X += pipe1XVelocity;
  pipe2X += pipe2XVelocity;
 
  //MAKE PIPES
 
  fill(0, 255, 0);
  rect(pipe1X, pipe1Y, pipeWidth, 500);
  rect(pipe2X, pipe2Y, pipeWidth, 500);
 
  // 9 TELEPORT PIPES
  if (pipe1X < -50)
  {
  pipe1X = 400;
  pipe2X = 400;
  int random = (int) random(100, 300);
  pipe1Y = random + 50;
  pipe2Y = random - 550;
  }
 
  //IF BIRD HITS PIPES
  if (birdX + birdWidth > pipe1X && birdX < pipe1X + pipeWidth && birdY + birdHeight > pipe1Y)
  {
  lose = true;
  }
 
  if (birdX + birdWidth > pipe2X && birdX < pipe2X + pipeWidth && birdY < pipe2Y + pipeHeight)
  {
  lose = true;
  }


 // IF BIRD HITS GROUND  
  rect(0, 400, 400,100);
  if (birdY >= 500)
  {
  lose = true;


  }
 
  if (lose == true)
  {
  pipe1X = -50;
  birdY = 100;
  birdYVelocity = 0;
  lose = false;
  }
}


void mousePressed()
{
   birdYVelocity = -5;
  sound.trigger();
}







