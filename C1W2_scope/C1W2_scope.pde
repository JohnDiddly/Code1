int numerator =3;
int denominator =4;

void setup (){
 color bg=color(255,255,0);
 background(bg);
 
 size (300, 300);
 
 
  
}

void draw (){
  //background(bg); // error because outside of scope
 fill(10*(numerator*denominator)); // these are at file scope so we can use
 rectMode(CENTER);
 rect(width/2, height/2, 20,20);
 
  
  
}
