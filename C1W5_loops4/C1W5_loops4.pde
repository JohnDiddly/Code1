void setup() {
  size (600, 600);
  rectMode (CENTER);
}


void draw() {
  background(255);
  for (int y=0; y<height; y+=30) {
    for (int x=0; x<width; x+=10) {
      pushMatrix();
      translate(x,y);
      float r =map(x, 0, width, 0, 255);
      float g = map(y, 0, height, 0, 255);
      fill(r,g,150);
      float a = map(y, 0, height, 0, TWO_PI);
      rotate(radians(frameCount)+a);
      rect(0, 0, 2, 70);
      popMatrix();
    }
  }
}
