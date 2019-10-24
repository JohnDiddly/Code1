boolean lose = false;
boolean win = false;
boolean startArea = false;
float characterY;
float characterX;
float loseX1;
float loseY1;
float loseX1Speed;
float loseX2;
float loseY2;
float loseX2Speed;
float loseX3;
float loseY3;
float loseX3Speed;




void setup() {
  size (800, 800);
  characterY=-10000;
  loseX1 = 600;
  loseY1 = 200;
  loseX2 = 400;
  loseY2 = 400;
  loseX3 = 200;
  loseY3 = 600;
  loseX1Speed=5;
  loseX2Speed=10;
  loseX3Speed=15;
}
void draw () {
  float loseD1= dist (characterX, characterY, loseX1, loseY1);
  float loseD2= dist (characterX, characterY, loseX2, loseY2);
  float loseD3= dist (characterX, characterY, loseX3, loseY3);

  //to animate
  background (250);

  //character fall rate
  characterY=characterY+10;

  //draw start area
  fill(0, 255, 00);
  rect (50, 0, 700, 100);

  //start game
  if (startArea == true) {
    characterX=mouseX;
    strokeWeight(1);
    fill(15);
    ellipse (characterX, characterY, 50, 50);
  }

  //lose objects
  fill(255, 0, 0);
  //object 1
  ellipse (loseX1, loseY1, 50, 50);
  if (loseX1>width-25||loseX1<25) {
    loseX1Speed*=-1;
  }
  loseX1 += loseX1Speed;
  //object 2
  ellipse (loseX2, loseY2, 50, 50);
  if (loseX2>width-25||loseX2<25) {
    loseX2Speed*=-1;
  }
  loseX2 += loseX2Speed;
   //object 3
  ellipse (loseX3, loseY3, 50, 50);
  if (loseX3>width-25||loseX3<25) {
    loseX3Speed*=-1;
  }
  loseX3 += loseX3Speed;

  //debug input
  //println (loseD1);

  //lose triggers 
  if (loseD1<50) {
    lose=true;
    characterY=loseY1;
    characterX=loseX1;
  } else {
    lose=false;
  }
  if ((loseD2<50)) {
    lose=true;
    characterY=loseY2;
    characterX=loseX2;
  //} else {
    //lose=false;
  }
  if ((loseD3<50)) {
    lose=true;
    characterY=loseY3;
    characterX=loseX3;
  //} else {
  //  lose=false;
  }

  //win trigger
  if (characterY>height) {
    win=true;
  }

  //win state
  if (win ==true) {
    background (0, 255, 00);
    strokeWeight (10);
    //W
    line (200, 300, 225, 400);
    line (225, 400, 250, 350);
    line (250, 350, 275, 400);
    line (275, 400, 300, 300);
    //I
    line (350, 400, 400, 400);
    line (375, 400, 375, 300);
    line (350, 300, 400, 300);
    //N
    line (450, 400, 450, 300);
    line (450, 300, 500, 400);
    line (500, 400, 500, 300);
    //!
    line (550, 300, 550, 375);
    ellipse (550, 395, 8, 10);
  }

  //fail state
  if (lose == true) {
    background (255, 0, 0);
    strokeWeight (10);
    //F
    line (100, 400, 100, 300);
    line (100, 300, 150, 300);
    line (100, 325, 125, 325);
    //A
    line (200, 400, 224, 300);
    line (224, 300, 248, 400);
    line (212, 350, 236, 350);
    //I
    line (300, 400, 350, 400);
    line (325, 400, 325, 300);
    line (300, 300, 350, 300);
    //L
    line (400, 400, 400, 300);
    line (400, 400, 450, 400);
    //!
    line (500, 300, 500, 375);
    ellipse (500, 395, 8, 10);
  }
}

void mousePressed() {
  characterY=0;
  win=false;
  if  ((mouseX>50) && (mouseX<750)) {
    if ((mouseY>0) && (mouseY<100)) {
      startArea = true;
    }
  }
}

//johnDiddly was here
