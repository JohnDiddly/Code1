void setup(){
 for (int i=0; i<10; i++){
  println(i); 
 }
 size (600,600);
}

void draw (){
  
  for (int i=0; i<height; i++){
   float r = map(i, 0, height, 0, 255);
   stroke (r, 150, 120);
    line (0, i, width, i);
  }
  
  for (int i =0; i<=width; i+=30){
    stroke(0);
    fill(255);
   ellipse (i, height/2, 20,20*i*0.03); 
  }
  
  translate (width/2, height/2);
  rectMode (CENTER);
  for (int i=100; i >0; i--){
    rotate (map(i, 0, 100, 0, TWO_PI));
    float s =  map(i, 0, 100, 10, 250);
    rect(0,0, s, s);
    
  }
}
