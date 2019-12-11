ArrayList<Mover> movers = new ArrayList<Mover>();
ArrayList<Attractor> attractors = new ArrayList<Attractor>();

void setup() {
  size(800, 600);
  for (int i = 0; i < 50; i++) {
    movers.add(new Mover(random(width), random(height)));
  }
}

void draw() {
  background(255);

  //draw target
  fill(255, 0, 0);
  ellipse(width/2, height/2, 50, 50);
  fill(255);
  ellipse(width/2, height/2, 30, 30);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 10, 10);

  for (Attractor a : attractors) {
    a.display();
  }

  for (Mover m : movers) {
    for (Attractor a : attractors) {
      PVector aForce = new PVector(a.pos.x, a.pos.y);

      aForce.sub(m.pos);
      aForce.normalize();
      aForce.mult(0.02 * -a.mass);
      m.applyForce(aForce);
    }
    m.update();
    m.display();
  }
}

void mousePressed() {
  attractors.add(new Attractor(mouseX, mouseY));
}










class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  float size;
  boolean hitTar = false;
  color hitColor = color (255, 0, 0);

  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    mass = random(1, 5);
    size = 5 * mass;
  }



  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);

    if (pos.x<425 && pos.x>375) {
      if (pos.y<425 && pos.y>375) {
        hitTar = true;
        
      }
    }

    if (pos.x >width-size/2) {
      vel.x *= -1;
    }

    if (pos.x <size/2) {
      vel.x *= -1;
    }

    if (pos.y >height-size/2) {
      vel.y *= -1;
    }

    if (pos.y <size/2) {
      vel.y *= -1;
    }

    //if (pos.x > (width/2)-25 && pos.x <(width/2)+25) {
    //  if (pos.y > (height/2)+25 && pos.y <(height/2)-25) {
    //    //pos.x = 1000; 
    //    println("you touched the target");
    //  }
    //}
  }

  void display() {
    fill(240);
    if (hitTar==true) {
      stroke(hitColor);
    } else {
      stroke(0);
    }
    ellipse(pos.x, pos.y, size, size);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
}

class Attractor {
  PVector pos;
  float mass;
  float size;

  Attractor(float x, float y) {
    pos = new PVector(x, y);
    mass = random(1, 5);
    size = 20 * mass;
  }

  void display() {
    fill(0);
    ellipse(pos.x, pos.y, size, size);
  }
}
