

void setup(){
 size(600,600);
 colorMode(RGB);
 color c = color (255, 0, 200, 100);
 background (c);
 
}


void draw(){
  color from = color(255, 0, 0, 50);
  color to = color (255, 255, 0, 50);
  color result = lerpColor(from, to, .5);
  
  background(120);
  blendMode(MULTIPLY);
  for (int i=0; i<=width; i+=25){
    noStroke();
    fill(lerpColor(from, to, map(i, 0, width, 0,1)));
    ellipse (i, height/2, 50,50);
  }
  
}
