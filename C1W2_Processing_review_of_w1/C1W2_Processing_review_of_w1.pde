void setup(){
  size(400,400);
  background (255);

}

void draw() {
  
  strokeWeight(4);
  background(255);

  stroke(0);

  fill(255, 0, 0);
  
  ellipse(width/2, height/2, 80,80);
  
  noStroke();
  
  fill(0,0,255);
  rectMode(CENTER);
  rect(width/2, .66*height, width-160, 80);
  
  stroke(0,255,0);
  strokeWeight(map(mouseX, 0, width, 1, 10));
  line(80, height/3, width-80,80);
  
  //println("mouse position:" + mouseX + "," + mouseY);
  
  stroke(random(255), random(255), random(255));
  line(width/2, height/2, mouseX, mouseY);
  
  
}
