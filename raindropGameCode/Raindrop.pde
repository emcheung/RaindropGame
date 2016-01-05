class Raindrop { //<>//
  PVector loc, vel, acc;
  int diam;
  color c;

  Raindrop(float x, float y) {
    diam = 20;
    loc = new PVector(x,y);
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
  
  boolean isInContactWith(PVector point, float bradius) {
    if(point.dist(loc) <= diam/2 + bradius) {
    return true;
    } else return false;
  }
  
  boolean isDead() {
    if (loc.y > height + diam/2) {
      return true;
    } else return false;
  }
  
  void reset() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, 0);
  }
}