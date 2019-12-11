/*
  try to reproduce the 'twinkling stars' effect in the gif.
  you should use the Star class in order to do this.
  think of the starry sky as a group of star objects that 
  change color over time.
  if you can't reproduce it exactly, come as close as you can.
*/

//int num =100;
//int [] stars = new int [num];
ArrayList<Star> stars = new ArrayList<Star>();

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  for(int i=0; i<stars.size(); i++){
    Star temp = stars.get(i);
    temp.update();
    temp.drawStar();   
  }
  
  for (int i=100; i<0; i++){
   stars.add(new Star(random(0,width), random(0,height))); 
  }
 
}

class Star {
  float x;
  float y;
  float life=10;
  
  Star(float _x, float _y){
    x=_x;
    y=_y;
  }
  
void update() {
    if (life>0) {
      life-=1;
    } else {
      life+=1;
    }
  }
  
  void drawStar(){
   stroke(255,life*10);
   line(x-2, y, x+2, y);
   line(x, y-2, x, y+2);
  }
  
}
