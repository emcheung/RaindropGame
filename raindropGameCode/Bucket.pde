class Bucket {
  //Initialize variables
  int diam, max;
  PVector loc;
  color c;
  
  
  Bucket() { //Define class Bucket
    //Declare variables
    diam = 50;
    loc = new PVector(mouseX, mouseY);
    c = color(255);
    max = 200; //Game ends when snowball reaches diameter of 200
  }
  
  void display() {
    fill(255);
    loc = new PVector(mouseX, mouseY); //Define vector loc as mouse position
    ellipse(loc.x, loc.y, diam, diam); //Draw ellipse at loc
    
    //Display value of size of snowball
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