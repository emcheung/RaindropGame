class Raindrop { //<>//
  //Initialize variables
  PVector loc, vel, acc;
  int diam;
  color c;

  Raindrop(float x, float y) { //Define class Raindrop with parameters x and y
    //Declare variables
    diam = 20;
    loc = new PVector(x, y);
    c = color(255);
    acc = new PVector(0, 0.3);
    vel = new PVector(0, 0);
  }

  void fall() {
    vel.add(acc); //Increase vel by value acc
    loc.add(vel); //Increase loc by value vel
  }

  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam); //Draw ellipse at loc
  }

  boolean isInContactWith(PVector point, float bradius) { //Parameters: specified point (Snow) and radius (Snowball) 
    if (point.dist(loc) <= diam/2 + bradius) { //If snowball and snow are in contact
      return true;
    } else return false;
  }

  boolean isDead() {
    if (loc.y > height + diam/2) { //If snow reaches bottom of screen
      return true;
    } else return false;
  }

  void reset() {
    loc = new PVector(random(width), 0);
    vel = new PVector(0, 0);
  }
}