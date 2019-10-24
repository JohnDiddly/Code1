void setup() {
  size (600, 600);
  int i=0;
  while (i<10);
  {
    println ("i have asked you for help" + i + "times!!!");
    i++;
  }
}


void draw() {
  background (255);
  int i =0;
  while (i<100){
    
   float x = map (i, 0, 100, 100, width-100);
   ellipse (x, mouseY, 40, 40);
   i++;
  }
}
