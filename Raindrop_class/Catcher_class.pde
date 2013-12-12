class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc= new PVector(mouseX, mouseY);
    //this defines loc.x as mouseX and loc.y as mouseY
    d=45;
  }

  void display() {
    colorMode(RGB);
    ellipse(loc.x, loc.y, d, d);
    //this creates an ellipse with a radius of d that follows the mouse
  }

  void update() {
    loc.set(mouseX, mouseY);
    //this redefines the location of the drawn ellipse when the frame changes
  }
  void checkCatcher(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.loc.set(-width, height*10);
      points++;
      //this makes it so that when a raindrop comes in contact with the catcher, the score goes up by one and the raindrop "dissapears" from the screen
    }
  }
}
