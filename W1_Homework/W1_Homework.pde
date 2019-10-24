void setup (){
  //establish size of view
  size (640, 660);
}

void draw (){
  background (12, 40,160);
  strokeWeight (8);
  noFill();
  rect(200, 150, 200, 300);
  rect(150, 200, 300, 200);
  ellipse(mouseX, mouseY, 60,30);
  
}
