class Raindrop { //<>//
  PVector loc, vel, acc;
  int diam;
  color c;

  Raindrop(PVector pos) {
    diam = 50;
    loc = pos;
    c = color(255);
    acc = new PVector(0, 0.5);
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
}