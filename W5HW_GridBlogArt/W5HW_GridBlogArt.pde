//Image inspiration
//https://66.media.tumblr.com/1fe21ff78c038b802a9708f2708d8652/tumblr_pkk8s9kTpt1sizr65o1_1280.jpg
void setup () {
  size (810, 810);
  noStroke ();
}


void draw () {
  background (255);
  translate (10, 10);
  //float k;
  for (int i=0; i<=width; i+=100) {

    for (int j=0; j <=height; j+=100) {

      float s=map (j*i, 150, height*width, 20, 80);
      fill (0);
      rect(i, j, 90, 90);

      fill (240);
      rect (i, j, s, s);
    }
  }
}
