boolean redButtonOn = false;
boolean blueButtonOn = true;
boolean blackButtonOn = false;
float dorkX;
float dorkY;

//trying to define variables before width and height have been determined :(
//float buttonY = height-(height/10);
//float redButtonX = width-(.67*width);
//float blueButtonX = width-(.5*width);
//float blackButtonX = width-(.33*width);

void setup () {
  size (600, 800);
}



void draw () {
  float buttonY = height-(height/6);
  float redButtonX = width-(.67*width);
  float blueButtonX = width-(.5*width);
  float blackButtonX = width-(.33*width);

  if (redButtonOn) {
    background(random(255), random(255), random(255));
  } else {
    background (150);
  }

  //draw red button
  fill (255, 0, 0);
  ellipse(redButtonX, buttonY, 50, 50);

  //draw blue button
  fill (0, 0, 255);
  ellipse (blueButtonX, buttonY, 50, 50);

  //draw black button
  fill (0, 0, 0);
  ellipse (blackButtonX, buttonY, 50, 50);


  if (blackButtonOn) {
    dorkX=random(0, width);
    dorkY=random(0, height);
  }


  if (blueButtonOn) {
    drawDork (dorkX, dorkY);
    drawDork (dorkX-25, dorkY);
    drawDork (dorkX+25, dorkY);
    drawDork (dorkX-50, dorkY);
    drawDork (dorkX, dorkY-30);
    drawDork (dorkX, dorkY+30);
    drawDork (dorkX, dorkY-60);
    drawDork (dorkX, dorkY+60);
    drawDork (dorkX+75, dorkY+75);
    drawDork (dorkX-90, dorkY-90);
    //drawDork (random(0,width), random(0,height));
  } else {
    dorkDance (dorkX, dorkY);
    dorkDance (dorkX-25, dorkY);
    dorkDance (dorkX+25, dorkY);
    dorkDance (dorkX-50, dorkY);
    dorkDance (dorkX, dorkY-30);
    dorkDance (dorkX, dorkY+30);
    dorkDance (dorkX, dorkY-60);
    dorkDance (dorkX, dorkY+60);
    dorkDance (dorkX+75, dorkY+75);
    dorkDance (dorkX-90, dorkY-90);
  }


  //drawDork(dorkX-20, dorkY);
  //dorkDance(330, 250);
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

void mousePressed() {
  float buttonY = height-(height/6);
  float redButtonX = width-(.67*width);
  float blueButtonX = width-(.5*width);
  float blackButtonX = width-(.33*width);
  float rdD = dist (redButtonX, buttonY, mouseX, mouseY);
  if (rdD <50) {
    redButtonOn = !redButtonOn;
  }
  float blD = dist (blueButtonX, buttonY, mouseX, mouseY);
  if (blD <50) {
    blueButtonOn = !blueButtonOn;
  }
  float bkD = dist (blackButtonX, buttonY, mouseX, mouseY);
  if (bkD <50) {
    blackButtonOn = !blackButtonOn;
  }
}
