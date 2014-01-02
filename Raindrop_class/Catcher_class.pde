class Catcher {
  PVector loc;
  int d;
  PImage umbrella;
  Catcher() {
    loc= new PVector(mouseX, mouseY);
    //this defines loc.x as mouseX and loc.y as mouseY
    d=45;
    umbrella= loadImage ("umbrella.png");
    imageMode(CENTER);
    //this is the image that will follow the mouse around and "catch"
  }

  void display() {
    colorMode(RGB);
    image(umbrella, loc.x, loc.y, 100, 125);
    //this shows the image that follows the mouse
  }
  void update() {
    loc.set(mouseX, mouseY);
    //this redefines the location of the catcher when the frame changes
  }
  void checkCatcher(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.loc.set(-width, height*10);
      points++;
      //this makes it so that when a raindrop comes in contact with the catcher, the score goes up by one and the raindrop "dissapears" from the screen
    }
  }
//   void checkPerson (Raindrop drop) {
//    if (drop.loc.x>=height) {
//      fill(255, 0, 0);
//      textAlign(CENTER);
//      text("you lose!", width/2, height/4);
//      text("play again", width/2, height/2);
//    }
//  }
}
//this is an attempt that does not work yet and makes me sad
