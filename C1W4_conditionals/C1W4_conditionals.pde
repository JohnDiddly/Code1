boolean a=true;

void setup() {
  size (600, 600);
}

//true && true --> true
//true || false --> true


void draw() {
  if ((mouseX>width/2 || mouseY > height/2) && frameCount >100) {
    background(255, 150, 50);
  } else {
    background(150, 50, 255);
  }
  line(width/2,0, width/2, height);
  line(0, height/2, width, height/2);
  
  //if (frameCount < 300) {
  //  ellipse(width/2, height/2, 200, 200);
  //} else if (frameCount <500) {
  //  ellipse(width/2, height/2, 400, 400);
  //} else if (frameCount < 600) {
  //  rect (200,200,200,200);
  //} else {
  //  rect(100, 100, 400, 400);
  //}
}

//equality opperator
//checks for equality
//true == true;

//inequality operator
//!=

//assignment opperator
//assigns a value
//int x =10

//> < >= <=

//else if

//and &&
// of ||
