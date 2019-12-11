import processing.sound.*;
SoundFile sfx;

ArrayList<CloudWall> cloudwalls = new ArrayList<CloudWall>();
ArrayList<WaterDrop> waterdrops = new ArrayList<WaterDrop>();
ArrayList<EndCircle> endcircles = new ArrayList<EndCircle>();

float charX;
float charY;
float worldX;
float worldY;
boolean up=false;
boolean down=false;
boolean left=false;
boolean right=false;
float speed=5;
color cloud = color (120);
color cloudSprite = color (135, 206, 250);
float deathCount;
color text = color (0, 0, 139);
color water = color (0, 191, 255);
color lightCloud = color (220, 220, 220);
float waterCount;
boolean playGame=false;


void setup() {
  size (600, 400);
  charX=300;
  charY=200;
  sfx= new SoundFile(this, "WaterDropSoundForMidtermv2");
}


void draw () {
  //println(charX);

  background(lightCloud);
  fill(text);
  text("Welcome to the cloud!", 200, 200);
  text("You are a cloud sprite!", 220, 250);
  text("Use the arrow keys to move and Press 'p' to begin!", 300, 300);
  text("You can also press 'p' to return to the starting place if you get lost!", 100, 330);
  if (playGame==false) {
    //println("game start screen");
  }
  if (keyPressed) {
    if (key=='p') {
      playGame=true;
      //println("charX" + charX + "and charY" + charY);  
      charX=300;
      charY=200;
    }
  }
  if (playGame==true) {
    worldX=charX;
    worldY=charY;
    background (255);
    noStroke();




    pushMatrix();
    translate(charX, charY);


    //background cloud patterns
    fill(lightCloud);
    for (int i=4; i>0; i--) {
      ellipse(worldX+1500-i*400, worldY-50, 500, 500);
      ellipse(worldX+1500-i*400, worldY-600, 500, 500);
      ellipse(worldX+2000-i*400, worldY+600, 500, 500);
      ellipse(worldX+2500-i*400, worldY+1200, 500, 500);
      ellipse(worldX+4500-i*400, worldY-1200, 500, 500);
      ellipse(worldX+2500-i*400, worldY-1200, 500, 500);
      ellipse(worldX+3500-i*400, worldY+60, 500, 500);
      ellipse(worldX+3500-i*400, worldY-60, 500, 500);
      ellipse(worldX+4500-i*400, worldY+600, 500, 500);
      ellipse(worldX+4500-i*400, worldY-600, 500, 500);
    }

    waterdrops.add(new WaterDrop(worldX+100, worldY+50, 10));

    for (int i=10; i>=0; i--) {
      waterdrops.add(new WaterDrop(random(0, 2000), random(0, 1000), 10));
    }

    for (int i=30; i>=0; i--) {
      waterdrops.add(new WaterDrop(worldX+2000-i*100, worldY+1000-i*50, 10));
    }

    for (int i=30; i>=0; i--) {
      waterdrops.add(new WaterDrop(worldX-500+i*100, worldY+300-i*50, 10));
    }


    for (int i=30; i>=0; i--) {
      waterdrops.add(new WaterDrop(worldX+4000-i*100, worldY+1000-i*50, 10));
    }

    for (int i=30; i>=0; i--) {
      waterdrops.add(new WaterDrop(worldX+1500+i*100, worldY+300-i*50, 10));
    }


    endcircles.add(new EndCircle(worldX+2400, worldY, 40));


    //if (dist(width/2, height/2, worldX+100, worldY+50)<5+25) {
    //  //println("you touched waterdrop 1");
    //  // waterdrops.add(new WaterDrop(worldX+100000, worldY+500000, 10));
    //} else {
    //  waterdrops.add(new WaterDrop(worldX+100, worldY+50, 10));
    //  //println("you are not touching waterdrop 1");
    //}
    //cloud walls
    for (int i=8; i >=0; i--) {
      cloudwalls.add(new CloudWall(worldX-400+i*80, worldY-i*100, 60));
      cloudwalls.add(new CloudWall(worldX-400+i*80, worldY+i*100, 60));
      cloudwalls.add(new CloudWall(worldX+350+i*160, worldY-900, 60));
      cloudwalls.add(new CloudWall(worldX+350+i*160, worldY+900, 60));
      cloudwalls.add(new CloudWall(worldX+1760+i*80, worldY-900+i*100, 60));
      cloudwalls.add(new CloudWall(worldX+1760+i*80, worldY+900-i*100, 60));
    }
    fill(text);
    text ("Deaths" + deathCount, worldX-150, worldY-50);
    text ("Don't touch the walls of the cloud!", worldX-400, worldY-50);
    text ("Press 'v' while touching water to collect some!", worldX-150, worldY-150);
    text ("Water collected"+ waterCount, worldX-200, worldY-250);
    text ("Water collected"+ waterCount, worldX+4000, worldY);



    popMatrix();


    for (int i=0; i < cloudwalls.size(); i++) {
      CloudWall temp = cloudwalls.get(i);
      temp.update();
      temp.drawCloudWall();
      if (temp.life<0) {
        cloudwalls.remove(i);
      }

      if (dist(width/2, height/2, temp.x, temp.y)<temp.r+25) {
        temp.isTouchingPlayer = true; 
        println("you touched a cloudwall");
        deathCount=deathCount+.5;
        charX=300;
        charY=200;

        temp.isTouchingPlayer = false;
      }
    }


    for (int i=0; i < waterdrops.size(); i++) {
      WaterDrop temp = waterdrops.get(i);
      temp.update();
      temp.drawWaterDrop();
      if (temp.life<0) {
        waterdrops.remove(i);
      }
      if (keyPressed) {
        if (key =='v') {
          if (dist(width/2, height/2, temp.x, temp.y)<temp.r+25) {
            temp.isTouchingPlayer = true; 
            //println("you touched a waterdrop");
            charY=charY+40;
            waterCount=waterCount +.25;
            sfx.play();

            sfx.rate(1);
            sfx.amp(.5);
            sfx.pan(0);


            temp.isTouchingPlayer = false;
          }
        }
      }
    }
    fill(cloudSprite);
    ellipse(width/2, height/2, 50, 50);
    for (int i=0; i < endcircles.size(); i++) {
      EndCircle temp = endcircles.get(i);
      temp.update();
      temp.drawEndCircle();
      if (temp.life<0) {
        endcircles.remove(i);
      }

      if (dist(width/2, height/2, temp.x, temp.y)<temp.r+25) {
        temp.isTouchingPlayer = true; 
        //println("you touched an endcircle");
        //println(worldX);
        //println(worldY);
        charX=-2060;
        charY=200;
        background(lightCloud);
        fill(text);
        text("You collected" + waterCount + "water, and died" + deathCount + "times!", 200, 200);
        text("Press 's' to play again!", 200, 300);
        if (keyPressed) {
          if (key=='s') {
            deathCount=0;
            waterCount=0;
            charX=300;
            charY=200;
            playGame=false;
          }
        }
      }
    }


    if (up==true) {
      charY=charY+speed;
    }

    if (down==true) {
      charY=charY-speed;
    }
    if (right==true) {
      charX=charX-speed;
    }
    if (left==true) {
      charX=charX+speed;
    }
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
    //println("up!");
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
    //println("released");
  }
}


class CloudWall {
  boolean isTouchingPlayer=false;
  float x;
  float y;
  float r;
  float life=1;

  CloudWall (float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
  }

  void update() {
    life-=1;
  }



  void drawCloudWall () {
    fill(cloud);
    ellipse (x, y, 2*r, 2*r);
  }
}

class WaterDrop {
  boolean isTouchingPlayer=false;
  float x;
  float y;
  float r;
  float life=1;


  WaterDrop (float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
  }

  void update() {
    life-=1;
  }



  void drawWaterDrop () {
    fill(water);
    ellipse (x, y, 2*r, 2*r);
  }
}

class EndCircle {
  boolean isTouchingPlayer=false;
  float x;
  float y;
  float r;
  float life=1;

  EndCircle (float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
  }

  void update() {
    life-=1;
  }



  void drawEndCircle () {
    fill(0, 250, 0);
    ellipse (x, y, 2*r, 2*r);
  }
}
