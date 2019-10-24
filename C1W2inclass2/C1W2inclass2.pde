void circle(float x, float y, float r){
  fill (255);
  ellipse (x,y,r*2, r*2); 
}


void circle(float x, float y, float r, float g){
 fill(g);
  ellipse (x,y,r*2, r*2); 
}


void setup(){
  size (600,600);
  background (255);
}

void draw(){
  background (255);
  circle (mouseX, mouseY, 50);
  circle (width/2, height/2, 100, 150);
  
  fill(255); // grayscale 0-255
  fill(255, 100); // grayscale, alpha (trasparency)
  fill(100, 150, 200); //
}
