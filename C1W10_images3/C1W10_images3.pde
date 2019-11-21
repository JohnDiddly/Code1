PImage img;

void setup(){
 size (320,320);
 img = loadImage("https://spng.pinpng.com/pngs/s/7-71769_free-icons-png-cartoon-transparent-png.png");
}


void draw(){
  background(255);
  //image(img, 0,0);
  loadPixels();
  
  for(int i=0; i<img.pixels.length; i++){
   float b = brightness(img.pixels[i]);
   color c = color(b);
   
   pixels[i] = c;
  }
  
  updatePixels();
}
