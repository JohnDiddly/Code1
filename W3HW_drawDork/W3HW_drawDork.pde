void setup () {
  size (600, 800);
}


void draw() {
  background (150);
  float x =230;
  x=x+10;
 drawDork (x, 150);
 
}

void drawDork (float x, float y) {

  strokeWeight(1);
  fill(255, 255, 255);
  ellipse(x, y, 10, 10);
  line(x, y+5, x, y+15);
  line(x, y+7, x-10, y);
  line(x, y+7, x+10, y);
  line(x, y+15, x-10, y+25);
  line(x, y+15, x+10, y+25);
}

void dorkDance (float x, float y) {
  strokeWeight(1);
  fill(255, 255, 255);
  ellipse(x, y+5, 10, 10);
  line(x, y+10, x, y+20);
  line(x, y+12, x-10, y+5);
  line(x, y+12, x+10, y+5);
  line(x, y+20, x-10, y+20);
  line(x, y+20, x+10, y+20);
  line(x-10, y+20, x-10, y+25);
  line(x+10, y+20, x+10, y+25);
}
