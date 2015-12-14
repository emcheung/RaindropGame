class Raindrop { //<>//
  PVector loc, vel, acc;
  int diam;
  color c;

  Raindrop(PVector pos) {
    diam = 50;
    loc = pos;
    c = color(255);
    acc = new PVector(0, 0.3);
    vel = new PVector(0, 0);
  }

  void fall() {
    vel.add(acc);
    loc.add(vel);
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  boolean isInContactWith(PVector point) {
    if(point.dist(loc) <= diam/2) {
    return true;
    } else return false;
  }
  
  void reset() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, 0);
  }
}