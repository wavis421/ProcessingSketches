//Start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don’t know how to do this. The suggestion under each step should help you with your program.
int frogX = 200;
int frogY = 390;
boolean goRight = true;
int dirCount = 0;
Car car_1;
int speed = 5;
int crashCount = 0;

void setup () {
  size(400,400);
  car_1 = new Car(speed);
}

void draw() {
  background (0,0,0);

  if (dirCount > 1000 || dirCount < 0) {
    goRight = !goRight;
  }

  if (goRight) {
    dirCount++;
    car_1.moveCarRight();
  }
  else
  {
    dirCount--;
    car_1.moveCarLeft();
  }

  car_1.display();
  if (intersects (car_1))
  {
    crashCount++;
    println("CRASH #" + crashCount + "!!");
  }
 
  fill (0,0,255);
  ellipse(frogX,frogY, 10,10);
}

boolean intersects(Car car) 
{
 if ((frogY > car.carY && frogY < car.carY+50) && (frogX > car.carX && frogX < car.carX+car.carLength))
     return true;
 else 
   return false;
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        frogY -= 5;
      //Frog Y position goes up
      }
      else if(keyCode == DOWN)
      {
        frogY += 5;
        //Frog Y position goes down 
      }
      else if(keyCode == RIGHT)
      {
        frogX += 5;
       //Frog X position goes right
      }
      else if(keyCode == LEFT)
      {
          frogX -= 5;
        //Frog X position goes left
      }
  }
  keepFrogInsideCanvas();

}

void keepFrogInsideCanvas()
{
  if (frogX > 399)
  {
    frogX = 399;
  }
  else if (frogX < 0)
  {
    frogX = 0;
  }
  if (frogY > 399)
  {
     frogY = 399;
  }
  else if (frogY < 0)
  {
     frogY = 0;
  }
}

class Car {
  int carX = 0;
  int carY = 200;
  int carLength = 70;
  int carHeight = 50;  // keep this constant
  int carSpeed;
  
  Car (int speed) {
    carSpeed = speed;
    rect (carX, carY, carLength, carHeight);
  }
  
  public void moveCarLeft ()
  {
    carX -= carSpeed;
    if (carX < 0) {
      carX = 399;
    }
  }
   
  public void moveCarRight ()
  {
    carX += carSpeed;
    if (carX > 399) {
      carX = 0;
    }
  }
  
  void display() 
  {
    fill(0,0,255);
    rect(carX, carY, carLength, carHeight);
  }
}


  /*    

13. Check when a car hits your frog. You can use the following intersection method to help. 

    boolean intersects(Car car) 

{

  if ((frogY > car.yPos && frogY < car.yPos+50) && (frogX > car.xPos && frogX < car.xPos+car.size))

      return true;

  else 

    return false;

}


14. Create a winner banner once you get to the other side 

    text( string message, x, y); 

    textSize(size); 

*/



