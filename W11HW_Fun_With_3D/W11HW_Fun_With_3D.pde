
void setup() {
  size(800, 800, P3D);
  noStroke();
}

void draw() {
  background(255);
  float stepSize = 120;
  
  lights();
  translate(width/2, height/2, -1000);
  rotateY(frameCount * 0.05);
  for (int i = -5; i < 5; i++) {
    for (int j = -5; j < 4; j++) {
      for (int k = -5; k < 3; k++) {
        pushMatrix();
        translate(i * stepSize, j * stepSize, k * stepSize);
        fill(map(i, -5, 5, 0, 255), map(j, -5, 5, 0, 255), map(k, -5, 5, 0, 255));
        sphere(20);
        popMatrix();
      }
    }
  }
}
