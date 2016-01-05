PVector mouse;
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();
Bucket b;

void setup() {
  size(1200, 800);
  mouse = new PVector();
  raindrops.add(new Raindrop(random(width), random(-height/2, 0)));
  b = new Bucket();
}

void draw() {
  mouse.set(mouseX, mouseY);
  background(0, 200, 255);

  fill(255);
  println(raindrops.size());
  raindrops.add(new Raindrop(random(width), random(-height/2, 0)));

  textSize(50);
  textAlign(CENTER, CENTER);

  if (b.maxSize()) {
    text("GAME OVER!", width/2, height/2);
    text("Click to reset", width/2, height/2 + 50);
  } else {
    text("Make the snowball grow!", width/2, 100);

    for (int i = raindrops.size() - 1; i > 0; i --) {
      Raindrop p = raindrops.get(i);
      p.display();
      p.fall();
      if (p.isDead()) {
        raindrops.remove(i);
      }
      if (p.isInContactWith(mouse, b.diam/2)) {
        raindrops.remove(i);
        b.diam += 1;
      }
    }
  }

  b.display();
}