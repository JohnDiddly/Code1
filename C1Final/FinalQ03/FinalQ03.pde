// this code draws an system where one ellipse rotates around another.
// replace this drawing code with a function that can be used to 
// draw the system repeatedly, like "drawSystem()". It should
// take arguments that allow parameters of the system to be customized,
// like the distance between each ellipse, the speed of rotation, and 
// the size of the ellipses.
// use your function to draw the system multiple times in the sketch
// as seen in the example gif.

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  drawSystem(width/2, height/2, 0.05, 150, 100, 50);
  drawSystem(mouseX, mouseY, 0.025, 200, 120, 60);
  drawSystem(50, 100, 0.1, 50, 20, 10);
}

void drawSystem(float _x, float _y, float _s, float _sp, float _le, float _se){
  float x = _x;
  float y = _y;
  float speed = _s;
  float spacing = _sp;
  float lellipse = _le;
  float sellipse = _se;
  
  pushMatrix();
  translate(x, y);
  rotate(frameCount * speed);
  ellipse(0, 0, lellipse, lellipse);

  pushMatrix();
  translate(spacing, 0);
  ellipse(0, 0, sellipse, sellipse);
  popMatrix();
  
  popMatrix();
}


//done
