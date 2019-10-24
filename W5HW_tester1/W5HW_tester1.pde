float x;
float y;
float xAngle;
float yAngle;
float xAmplitude;
float yAmplitude;
float xRate;
float yRate;

void setup() {

  size (800, 800);
  noStroke();

  xAngle = 0;
  yAngle = 0;
  xAmplitude = 100;
  yAmplitude = 100;
  xRate = 0.02;
  yRate = 0.02;
}

void draw () {
  //pushMatrix ();
  //translate (mouseX, mouseY);
  background(255);
  funStuff();
  fill(200);
  stroke(200);
  ellipse(mouseX, mouseY, 10, 10);  
  line(mouseX, mouseY, x, y);

  noStroke();

  xAngle += xRate;
  yAngle += yRate;
  x = mouseX + sin(xAngle) * xAmplitude;
  y = mouseY + cos(yAngle) * yAmplitude;
  fill(80);
  ellipse(x, y, 50, 50);
  //popMatrix ();
}

void funStuff () {
  background(0);
  fill(255);

  for (int i = 0; i < width; i+=30) {
    for (int j = 0; j < height; j+=30) {
      float d = dist(mouseX, mouseY, i, j);
      float c = map(d, 0, 200, 255, 0);
      fill(c);
      if (d < 15) {
        fill(255, 0, 0);
      }
      ellipse(i, j, 30, 30);
    }
  }
}
