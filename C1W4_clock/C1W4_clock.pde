void setup(){
  strokeWeight(4);
  size (600,600);
}


void draw(){
  background (255);
 translate (width/2, height/2);
 
 pushMatrix();
 float rads = map(second(), 0,60,0, TWO_PI);
 rotate(rads);
 line (0,0, 0, -200);
 popMatrix();
 
 pushMatrix();
 rotate(map(minute(),0,60,0,TWO_PI));
 line (0,0, 0, -200);
 popMatrix();
 
 
 pushMatrix();
 popMatrix();
 
 pushMatrix();
 popMatrix();
 
 
}
