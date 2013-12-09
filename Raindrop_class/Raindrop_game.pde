Raindrop[] r = new Raindrop[500];
Catcher c1;  
void setup() {
  size(500, 500);
  colorMode(HSB,360,100,100);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
  c1= new Catcher();
}

void draw() {
  background(230, 79, 42);
  for (int i = 0; i < r.length ; i++) {
    r[i].display();
    r[i].move();
  }
  c1.display();
  c1.update();
}
