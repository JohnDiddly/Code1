 PImage drag;
 
 color from = color (255, 0, 0);
 color to = color (255,255,0);
 

void setup(){
  size(600,600);

drag = loadImage("https://image.shutterstock.com/image-vector/traditional-asian-dragon-this-vector-260nw-756284281.jpg");
  
}

void draw(){
  background(0);
  for (int i=0; i<drag.height; i+=2){
   for (int j=0; j<drag.width; j+=2){
     color c = drag.get(j, i);
     float b = brightness(c);
     fill(b);
     ellipse(i,j, 3,3);
     
   }
  }
  
}
