
class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc= new PVector(mouseX, mouseY);
    d=45;
  }

  void display() {
    colorMode(RGB);
    ellipse(loc.x, loc.y, d, d);
  }

  void update() {
    loc.set(mouseX, mouseY);
  }
  void checkCatcher(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.loc.set(-width, height*10);
      points++;
    }
  }
}
