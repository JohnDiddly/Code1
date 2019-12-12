// this program draws a rectangle to the center of the screen.
// as shown in the gif, use map() and other means to use the mouse
// position to change attributes of the rectangle. 

// when mouseY is at height, the rectangle should be the width 
// and height of the screen.

// when mouseX is at 0, the rect should be red. when mouseX
// is at width, it should be blue. (it doesn't matter what colors are in-between.)

// moving the mouse from the left to the right side of the screen
// should result in the rectangle doing one full rotation (360 degrees).


void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  pushMatrix();
  translate(width/2, height/2);
  // add a mapped rotation here
  rotate (radians(map(mouseX, 0, width, 0, 360)));
  
  // map the value of s here
  //float s = 100;
  float s = map(mouseY, 0, height, 0, height);
  
  // map the color here (hint try using either lerpColor or HSB color mode)
  //color c = color(255);
  color col1 = color (255,0,0);
  color col2 = color (0,0,255);
  float normalized = map(mouseX, 0, width, 0, 1);
  color c = lerpColor(col1, col2, normalized);
  
  fill(c);
  rect(0, 0, s, s);
  popMatrix();
}

//done
