float secX;
float secY;
float minX;
float minY;
float hourX;
float hourY;
//float secXSpeed;
//float secYSpeed;
//float minXSpeed;
//float minYSpeed;
//float hourXSpeed;
//float hourYSpeed;

void setup() {
  size (800, 800);
  //secXSpeed= 1;
  //secYSpeed= 1;
}

void draw () {
  background(255);
  //if (secX>width-25 || secX<25) {
  //  secXSpeed *= -1;
  //}
  //if (secY>height-25 || secY<25) {
  //  secYSpeed *= -1;
  //}
  //if (minX>width-25 || minX<25) {
  //  minXSpeed *= -1;
  //}
  //if (minY>height-25 || minY<25) {
  //  minYSpeed *= -1;
  //}
  //if (hourX>width-25 || hourX<25) {
  //  hourXSpeed *= -1;
  //}
  //if (hourY>height-25 || hourY<25) {
  //  hourYSpeed *= -1;
  //}

  secX =  map(second(), 0, 60, 0, width);
  secY = map(second(), 0, 60, 0, height);
  minX =  map(minute(), 0, 60, 0, width);
  minY = map(minute(), 0, 60, 0, height);
  hourX =  map(hour(), 0, 24, 0, width);
  hourY = map(hour(), 0, 24, 0, height);
  //secX += secXSpeed;
  //secY += secYSpeed;
  //minX += minXSpeed;
  //minY += minYSpeed;
  //hourX += hourXSpeed;
  //hourY += hourYSpeed;
  fill(map(second(),0,60,0,255),80,map(second(),0,60,0,255));
  ellipse(secX, 100, 50, 50);
  fill(80,map(minute(),0,60,0,255),map(minute(),0,60,0,255));
  ellipse(minX, 200, 50,50);
  fill(map(hour(),0,60,0,255),map(hour(),0,60,0,255),80);
  ellipse(hourX, 400, 50,50);
}
