
int mouseEventCounter = 0;
int mousePressedBooleanCounter =0;

void setup(){
  size(300,300);
  
  
}


void draw(){
  if(mousePressed){
    mousePressedBooleanCounter++;
    println("mousePressedBooleanCounter:" + mousePressedBooleanCounter);
  }
}


void mousePressed(){
  mouseEventCounter++; //mouseEventCounter = mouseEventCounter +1;
                      // mouseEventCounter +=1;
  println("mousePressed() event" + mouseEventCounter);
  
}
