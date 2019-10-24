//println(sqrt(100));

//float result = sqrt(100);

//println (result);

//float pow2(float n) {

//  return n*n;
//}

//float pow2(float n) {
//  float result = n*n;
//  return result;
//}

//float addTwoNumbers (float a, float b){
// return a + b; 
//}

//void setup (){
//  float result =sqrt(100);

//  println(result);

//  float res = pow2(10);
//  println(res);

//  float res = pow2(10);
//  println(res);

//}


float getDistance(float x1, float y1, float x2, float y2) {
  float xd = x1-x2;
  float yd = y1-y2;
  xd = sq(xd);
  yd = sq(yd);
  float result = sqrt(xd+yd);
  return result;
}

int backgroundColor=255;

void setup() {
  size (600, 600);
}

void draw () {
  background(backgroundColor);
  ellipse(width/2, height/2, 100, 100);

  line (width/2, height/2, mouseX, mouseY);

  //float d=getDistance (width/2, height/2, mouseX, mouseY);
}
void mousePressed() {

  float d= dist(width/2, height/2, mouseX, mouseY);
  if (d<50) {
    if (backgroundColor==255) {
      backgroundColor = 100;
    } else {
      backgroundColor = 255;
    }
  }
}
