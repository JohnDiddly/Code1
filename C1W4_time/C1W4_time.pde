int time =3000;

void setup(){
  size (600,600);
}


void draw(){
  println(minute());
  if(millis()<time){
    float diff = time - millis();
    ellipse(width/2, map(diff, 0,3000, height,0), 100,100);
  }else{
    background (0);
    
  }
  }
 


void mousePressed(){
time = millis()+3000;

}
