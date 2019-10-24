float rate=0;

void setup(){
  size (600,600);
}

void draw(){
  rate +=.05;
  //float x = cos(rate *1.5) *100;
  //float y = sin(rate *.3) *300;
  //ellipse (width/2 +x, height/2 +y, 50,50);
  
  float y = (sin(rate)*100) + (sin(rate*10)*20);
  y+= cos(radians(frameCount))*30;
  ellipse (width/2, height/2 +y, 50, 50);
}
