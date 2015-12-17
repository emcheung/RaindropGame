class Bucket {
  float diam;
  PVector loc;
  color c;
  
  Bucket() {
    diam = 100;
    loc = new PVector(mouseX, mouseY);
    c = color(150);
  }
  
  void display() {
    fill(c);
    loc = new PVector(mouseX, mouseY);
    ellipse(loc.x, loc.y, diam, diam);
  }
}