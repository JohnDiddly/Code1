boolean up=false;
boolean down=false;
boolean left=false;
boolean right=false;
float x=400;
float y=400;
float oscillateBlue;
float angle;
float rate;
float amplitude;

void setup () {
  size (800, 800);
  rectMode (CENTER);
  angle = 0;
  rate = 0.03;
  amplitude = 100;
}

void draw () {
  //float spinSpeed;
  //background (255);
  
  angle += rate;
  oscillateBlue = map(sin(angle), -1, 1, 10, 100);
  pushMatrix();
  translate(x, y);
  for (int i=0; i<300; i+=60) {
    for (int j=0; j<300; j+=60) {
      float r, g, b;
      r=map(i, 0, 300, 0, 255);
      g=map(j, 0, 300, 0, 255);
      b=oscillateBlue;
      fill(r, g, b);

      rect(i, j, 30, 30);
      ellipse (i+30, j+30, 15, 15);
    }


    rotate (radians(frameCount));
  }

  popMatrix();
  if(up==true){
    y-=10;
  }
  
  if(down==true){
    y+=10;
  }
  if(right==true){
    x+=10;
  }
  if(left==true){
    x-=10;
  }
}


void keyPressed(){
  
   if (key == CODED) {
    if (keyCode == UP) {
      up=true;
    } else if (keyCode==RIGHT) {
    right=true;
    } else if (keyCode==LEFT) {
      left=true;
    } else if (keyCode==DOWN) {
      down=true;
    }
    
  }
}

void keyReleased (){
   if (key == CODED) {
    if (keyCode == UP) {
      up=false;
    } else if (keyCode==RIGHT) {
    right=false;
    } else if (keyCode==LEFT) {
      left=false;
    } else if (keyCode==DOWN) {
      down=false;
    }

  }
  
}

void mousePressed(){
  background(0);


}
