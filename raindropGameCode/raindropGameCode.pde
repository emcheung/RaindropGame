PVector mouse; //Declare PVector mouse
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>(); //Create ArrayList raindrops
Bucket b; //Declare Bucket
PFont comic; //Declare font Comic Sans (The best font to use lol)

void setup() {
  size(1200, 800);
  mouse = new PVector(); //Initialize PVector mouse
  raindrops.add(new Raindrop(random(width), random(-height/2, 0))); //Add new Raindrop at random place above screen to ArrayList
  b = new Bucket(); //Initialize Bucket b
  comic = loadFont("Comic Sans MS.ttf"); //load Comic Sans
}

void draw() {
  mouse.set(mouseX, mouseY); //Set components of PVector mouse
  background(0, 200, 255);

  fill(255);
  raindrops.add(new Raindrop(random(width), random(-height/2, 0))); //Add new Raindrops
  
  textFont(comic);
  textSize(50);
  textAlign(CENTER, CENTER);
  
  if(mousePressed) {
    b.diam = 50; //Reset snowball diameter
  }

  if (b.maxSize()) { //If boolean maxSize returns true
    text("GAME OVER!", width/2, height/2);
    text("Click to reset", width/2, height/2 + 50);
  } else { //If boolean maxSize returns false
    text("Make the snowball grow!", width/2, 100);

    for (int i = raindrops.size() - 1; i > 0; i --) {
      Raindrop p = raindrops.get(i); //Pull raindrop out of ArrayList
      p.display(); //Display Raindrop p
      p.fall(); //Motion of Raindrop p
      if (p.isDead()) { //If boolean isDead returns true
        raindrops.remove(i); //Remove raindrop with value i
      }
      if (p.isInContactWith(mouse, b.diam/2)) { //If snowball and snow are in contact
        raindrops.remove(i); //Remove snow
        b.diam += 1; //Increase snowball diameter
      }
    }
  }

  b.display(); //Display Bucket b
}