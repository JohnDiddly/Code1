ArrayList <Dot> dots = new ArrayList<Dot>();

void setup (){
  size (600,600);
}

void draw (){
  
  background (255);
  
  for (Dot d : dots) {
   d.display(); 
  }
  
}

class Dot {
 float x;
 float y;
 
 Dot (float _x, float _y) {
  x = _x;
  y = _y;
 }
}
