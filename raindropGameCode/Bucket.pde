class Bucket {
  int diam, max;
  PVector loc;
  color c;
  
  Bucket() {
    diam = 50;
    loc = new PVector(mouseX, mouseY);
    c = color(255);
    max = 200;
  }
  
  void display() {
    fill(255);
    loc = new PVector(mouseX, mouseY);
    ellipse(loc.x, loc.y, diam, diam);
    
    fill(0);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("Size:", mouseX, mouseY - 10);
    text(diam, mouseX, mouseY + 10);
  }
  
  boolean maxSize() {
    if(diam >= max) {
      return true;
    } else return false;
  }
}