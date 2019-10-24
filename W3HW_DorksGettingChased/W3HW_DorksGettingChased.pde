float dorkX = -50;
float dorkY = 400;


void setup () {
  size (600, 800);
}

void draw() {
  background (150);
  if (dorkX >= width+200) {
    dorkX=0;
    dorkY=400;
  }
  dorkX = dorkX+1;
  drawDork(dorkX, 75);
  drawDork(dorkX-100, 40);
  drawDork(dorkX-100, 75);
  drawDork(dorkX-100, 110);

  //dorkY =dorkY +2;
  //if (dorkY >= height){
  // dorkY=75;
  // }
  //drawDork(dorkX+50, dorkY);


  if (dorkX >= 400) {
    drawDork(400, dorkY);
    dorkY = dorkY+10;
  } else {
    drawDork(dorkX, 400);
  }

  if (dorkY==height+10) {
    fill(0, 0, 255);
    ellipse(400, height, 50, 100);
  }
  line(0, 428, 400, 428);
}

void drawDork(float x, float y) {

  strokeWeight(1);
  fill(255, 255, 255);
  ellipse(x, y, 10, 10);
  line(x, y+5, x, y+15);
  line(x, y+7, x-10, y);
  line(x, y+7, x+10, y);
  line(x, y+15, x-10, y+25);
  line(x, y+15, x+10, y+25);
}
