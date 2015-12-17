PVector mouse;   //declare a P
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();
Bucket b;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(mouseX, mouseY));
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  println(raindrops.size());
  raindrops.add(new Raindrop(mouseX, mouseY));

  for (int i = raindrops.size() - 1; i > 0; i --) {
    Raindrop p = raindrops.get(i);
    p. display();
    p.fall();
    if(p.isDead()) {
      raindrops.remove(i);
    }
  }
  
  //b.display();
}