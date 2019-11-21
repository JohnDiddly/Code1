PImage img;

void setup(){
 size (600, 600);
 img = loadImage("sadPepe.png");
  imageMode(CENTER);
}


void draw(){
  image(img, width/2, height/2);
  
  
}
