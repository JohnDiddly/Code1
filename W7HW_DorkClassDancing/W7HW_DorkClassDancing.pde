//float dorkX = -50;
//float dorkY = 400;
boolean dancing = false;
//Dork newDork1;
//Dork newDork2;


void setup () {
  size (300, 300);
//  println(dancing);
}

void draw() {
  background (150);
  // println(dancing);

  Dork newDork1 = new Dork(50, 50);
  Dork newDork2 = new Dork(100, 100);

  newDork1.dorkDance();
  newDork2.dorkDance();
  
  if (mousePressed==true) {
    dancing =true;
  }else{
    dancing = false;
  }
}


//void mousePressed () {
//  if (dancing == true) {
//    dancing = false;
//    println(dancing);
//  }

//  if (dancing == false) {
//    dancing = true;
//    println(dancing);
//  }
//}

class Dork {
  float x;
  float y;
  Dork(float _x, float _y) {
    x = _x;
    y= _y;
  }

  void dorkDance () {

    if (dancing == true) {
      strokeWeight(1);
      fill(255, 255, 255);
      ellipse(x, y+5, 10, 10);
      line(x, y+10, x, y+20);
      line(x, y+12, x-10, y+5);
      line(x, y+12, x+10, y+5);
      line(x, y+20, x-10, y+20);
      line(x, y+20, x+10, y+20);
      line(x-10, y+20, x-10, y+25);
      line(x+10, y+20, x+10, y+25);
    } 

    if (dancing == false) {
      strokeWeight(1);
      fill(255, 255, 255);
      ellipse(x, y, 10, 10);
      line(x, y+5, x, y+15);
      line(x, y+7, x-10, y);
      line(x, y+7, x+10, y);
      line(x, y+15, x-10, y+25);
      line(x, y+15, x+10, y+25);
    }
  }
}
