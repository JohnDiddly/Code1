void setup(){
  size (500,500);
}

void draw(){
  //float c = map(millis (), 0, 5000, 0, 255);
  //background (c);
  //println (c);
  
  background (255);
  translate (width/2, height/2);
  float a = map(millis (), 0, 5000, 0, TWO_PI);
  rotate(a);
  strokeWeight(5);
  line (0,0,200,0);
  
}
