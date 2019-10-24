void setup (){
  size (600,600);
}

void draw (){
  pushMatrix();
  translate (width/2, height/2);
  ellipse (0,0, 300,300); 
  popMatrix();
  
  translate (100,0);
  rect(0,0,200,100);
}
