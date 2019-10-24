float x;
float y;
float xSpeed;
float ySpeed;


void setup(){
  size (800,800);
  background(255);
  x=width/2;
  y=height/2;
  
  xSpeed=5;
  ySpeed=3;
  
}

void draw(){
  background (255);
  if(x>width-25 || x<25){
    xSpeed *= -1;
  }
  if(y>height-25 || y<25){
    ySpeed *= -1;
  }
  
  x+=xSpeed;
  y+=ySpeed;
  
  //if(dist(mouseX,mouseY,x,y,)<25){
    
  //}
  
  ellipse (x,y,50,50);

}


void mousePressed(){
  
}
