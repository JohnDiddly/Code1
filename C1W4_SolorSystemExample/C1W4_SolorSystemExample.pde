void setup() {
  size (800, 800);
  rectMode(CENTER);
}

void draw() {
  background (20);
  //camelCase
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  fill(255, 255, 0);
  rect(0, 0, 200, 200);

  pushMatrix();
  translate(300, 0);
  rotate(radians(frameCount*1.2));
  fill(0, 255, 100);
  rect(0, 0, 50, 50);


  pushMatrix();
  translate(100, 0);
  fill(150);
  rect(0, 0, 20, 20);
  popMatrix();

  popMatrix();
  popMatrix();
}
