int xPos = 250;
int yPos = 0;
int score = 0;
int finalScore = 100;

void setup() {
  size(500,500); 
}

void draw() {
   if (score < finalScore) {
   background(0, 0, 255);
   
   // raindrop
   fill (0,0,0);
   ellipse (xPos, yPos, 20, 20);
 
   noStroke();

   yPos += 5;
   if (yPos > 500) {
      yPos = 0;   
      xPos = (int) random(500);  
   } 
 
    // Draw bucket
    rect (mouseX, 450, 50, 50); 
   
   if (yPos > 450)
       checkCatch(xPos); 
   fill(255,255,255);
   textSize(16);
   text("Score: " + score, 50, 50);
   }
}

void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
     if (score >= 100) {
        textSize(40);
        text("YOU WON!!!", 100, 100);
     } else
        println("Your score is now: " + score);
}

