// this program draws four buttons and a rectangle. 
// add functionality to the Button class that sets
// its isPressed boolean when the mouse is pressed
// inside it, then change the value of x or y for each
// button. The rectangle in the center of the screen
// should move around with each button press as shown 
// in the example gif.

Button b1;
Button b2;
Button b3;
Button b4;

float x, y;

void setup() {
  size(650, 650);
  b1 = new Button(100, 600, 100, 50);
  b2 = new Button(250, 600, 100, 50);
  b3 = new Button(400, 600, 100, 50);
  b4 = new Button(550, 600, 100, 50);

  x = width/2;
  y = height/2;
}


void draw() {
  background(250);

  b1.display();
  b2.display();
  b3.display();
  b4.display();

  if (b1.isPressed==true) {
    y-=1;
  }

  if (b2.isPressed==true) {
    x+=1;
  }
  if (b3.isPressed==true) {
    y+=1;
  }
  if (b4.isPressed==true) {
    x-=1;
  }
  // check the value of each button's isPressed here 
  // then use it to change the value of x and y.


  rectMode(CENTER);
  fill(0);
  rect(x, y, 50, 50);
}

void mousePressed() {
  b1.handleInput(mouseX, mouseY);
  b2.handleInput(mouseX, mouseY);
  b3.handleInput(mouseX, mouseY);
  b4.handleInput(mouseX, mouseY);
}


class Button {
  float x;
  float y;
  float w;
  float h;
  boolean isPressed = false;

  Button(float _x, float _y, float _w, float _h) {
    x = _x - _w/2;
    y = _y - _h/2;
    w = _w;
    h = _h;
  }

  void handleInput(float xPos, float yPos) {


    if (xPos>x && xPos<x+w) {
      //println("inside");
      if (yPos>y && yPos<y+h) {
        //println("inside");
        if(isPressed==false){
        isPressed=true;}else{
         isPressed = false; 
        }
      }
    }



    // check to see if the mouse is inside the rect here,
    // and change the value of isPressed appropriately.
  }

  void display() {
    rectMode(CORNER);
    if (isPressed) {
      fill(100);
    } else {
      fill(200);
    }
    rect(x, y, w, h);
  }
}


//done
