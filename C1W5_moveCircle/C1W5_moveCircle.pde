char a = 'a';
boolean up=false;
boolean down=false;
boolean left=false;
boolean right=false;
float x=width/2;
float y=height/2;



void setup() {
  size (600, 600);
}

void draw() {
  if (keyPressed) {
    //println (key);
    //println(keyCode);
  }
  
  ellipse (x, y, 50,50);
  if(up==true){
    y--;
  }
  
  if(down==true){
    y++;
  }
  if(right==true){
    x++;
  }
  if(left==true){
    x--;
  }
}

void keyPressed() {
  //println(key); 
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
    println("up!");
  }
}


void keyReleased () {
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
    println("released");
  }
}
