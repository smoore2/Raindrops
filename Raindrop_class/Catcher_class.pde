
class Catcher {
  int x, y, w, h;

  Catcher() {
    x = mouseX;
    y = mouseY;
    w = 50;
    h = 25;
  }

  void display() {
    colorMode(RGB);
    rectMode(CENTER);
    fill(0);
    rect(x, y, w, h);
  }

  void update() {
    x = mouseX;
    y = mouseY;
  }
}

