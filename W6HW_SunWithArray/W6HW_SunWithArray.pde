//Track mouse using arrays

int num = 25;
int [] x = new int[num];
int [] y = new int [num];


float sunX =200;
float sunY =200;
float sunW = 50;
float sunH = 50;
color sn=color(255, 0, 0);
color hs=color (123, 55, 880);
color sky=color (0, 255, 255);



void setup() {
  size (600, 600);
}

void draw() {
  background(sky);
  fill(hs);

  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }

  x[0] = mouseX;
  y[0] = mouseY;

 for (int i = 0; i < num; i++) {
       ellipse(x[i], y[i], i/2.0, i/2.0);
  }
  
  //draw sun
  fill(sn);
  ellipse (sunX, sunY, sunW, sunH);

  //draw houses
  fill(hs);
  rect(100, 500, 100, 100);
  triangle (90, 500, 150, 450, 210, 500);

  rect(400, 500, 100, 100);
  triangle (390, 500, 450, 450, 510, 500);

  if (sunW>180) {
    color hs=color(255, 153, 51);

    fill(hs);
    rect(100, 500, 100, 100);
    triangle (90, 500, 150, 450, 210, 500);

    rect(400, 500, 100, 100);
    triangle (390, 500, 450, 450, 510, 500);
  }
}

void mousePressed() {
  sunX = map(mouseX, 0, width, -25, width+25);

  if (mouseX < width/2) {
    sunW=map(mouseX, 0, width/2, 50, 200);
    sunH=map(mouseX, 0, width/2, 50, 200);
    sunY=map(mouseX, 0, width, 250, 150);
  }
  if (mouseX> width/2) {
    sunW=map(mouseX, width/2, width, 200, 50);
    sunH=map(mouseX, width/2, width, 200, 50);
    sunY=map(mouseX, 0, width, 150, 250);
  }
}
