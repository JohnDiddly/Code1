void setup() {
  size (800, 800);
  background (255);
}

void draw() {
  //background (255);
  pushMatrix();
  translate (mouseX, mouseY);
  rotate(radians(frameCount));
  fill(255, 255, map(second(),0,60,0,255));
  ellipse(50, 0, 50, 50);

  pushMatrix();
  translate(250, 0);
  rotate(radians(frameCount*1.5));
  fill(map(second(),0,60,0,255), 255, 255);
  ellipse (0, 0, 30, 30);

  pushMatrix();
  translate(80, 0);
  rotate(radians(frameCount*2));
  fill(255, map(second(),0,60,0,255), 255);
  ellipse(0, 0, 15, 15);
  popMatrix();
  popMatrix();

  popMatrix();
}

void mousePressed(){
 //frame capture command 
 saveFrame();
}
