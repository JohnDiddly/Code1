float bx1;
float by1;
float bx1Speed;
float gx1;
float gy1;
float gx1Speed;


void setup() {
  size(600, 600); 
  rectMode(CENTER);
  bx1=100;
  by1=100;
  bx1Speed=2;
  gx1=200;
  gy1=150;
  gx1Speed = 2;
}



void draw() {
  background(150);

  if(bx1>width-25||bx1<25){
    bx1Speed *=-1;
  }
  
  bx1 += bx1Speed;
  
   if(gx1>width-25||gx1<25){
    gx1Speed *=-1;
  }
  
  gx1 += gx1Speed;
  
  fill(255, 0, 0);
  ellipse(bx1, by1, 50, 50);
  
  fill(0,255,0);
  ellipse(gx1,gy1, 50,50);



  fill(255);
  ellipse(mouseX, mouseY, 50, 50);

  if (dist(mouseX, mouseY, bx1, by1)<50) {
    background(0);
  }
  
  if(dist(mouseX, mouseY, gx1, gy1)<50){
   background (255,0,0); 
  }
  
  
}
