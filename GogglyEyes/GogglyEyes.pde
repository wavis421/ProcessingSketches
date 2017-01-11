int leftEyeX = 60;
int eyesY = 100;
int distanceBetweenEyes = 120;
int pupilSize = 25;
int eyeWidth = 100;

void setup() {
  size(500, 200);
  background(0, 200, 200);
  ellipseMode(LEFT);
}

void draw() {
  if (mouseX < leftEyeX+5) mouseX = leftEyeX+5;
  if (mouseX > leftEyeX+70) mouseX = leftEyeX+70;
  if (mouseY < eyesY+10) mouseY = eyesY+10;
  if (mouseY > eyesY+30) mouseY = eyesY+30;

  fill(255, 255, 255);
  ellipse(leftEyeX, eyesY, eyeWidth, 65);
  ellipse(leftEyeX+distanceBetweenEyes, eyesY, eyeWidth, 65);

  fill(0, 0, 0);
  ellipse(mouseX, mouseY, pupilSize, pupilSize);
  ellipse(mouseX+distanceBetweenEyes, mouseY, pupilSize, pupilSize);

}






