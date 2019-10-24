
int backgroundColor = 150;
//int lavaColor = (123, 48, 19);
color lv=color(255, 00, 00);
color mt=color(0, 255, 0);
color rk=color(250);


//float mtX = width/4;
//float mtY = height;
//float mtH = height/2;
//float mtW =width/2;




//float 



void setup() {
  size(800, 800);
  background(backgroundColor);
}

void draw () {

  float mtX = width/4;
  float mtY = height;
  float mtH = height/2;
  float mtW =width/2;

  float lvW = width/8;
  float lvH = width/2;
  
  //rect(50,50, 100, 100);

  //draw mountain
  strokeWeight(1);
  fill (mt);
  triangle (mtX, mtY, (mtX+mtW/2), (mtY-mtH), (mtX+mtW), mtY);
  if (mousePressed) {
    //draw lava
    fill(lv);
    ellipse((mtX+mtW/2), (mtY-mtH), lvW, lvH);
    //background(backgroundColor);
  }
}

//void mousePressed() {
//  float mtX = width/4;
//  float mtY = height;
//  float mtH = height/2;
//  float mtW =width/2;

//  float lvW = width/8;
//  float lvH = width/2;
//  //draw lava
//  fill(lv);
//  ellipse((mtX+mtW/2), (mtY-mtH), lvW, lvH);
//}

// nice purple 123,55,880
