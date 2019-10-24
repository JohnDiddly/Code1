float rate =0;

void setup() {
  size (800, 400);
}


void draw () {

  float s = sin(radians(frameCount));
  float pos = map(s, -1, 1, 0, width);
  background (map(s, -1, 1, 0, 255));
  stroke (map(s, -1, 1, 0, 255));
  line (pos, 0, pos, height);
}
