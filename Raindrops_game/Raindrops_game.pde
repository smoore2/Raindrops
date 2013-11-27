class bouncer {
  PImage img;
  PVector loc;
  int bouncex;
  int bouncey;
  float y;
  float x;
  bouncer(float tx, float ty) {
    loc= new PVector(0, 0);
//    img= loadImage("fallleaf.png");
    bouncex=1;
    bouncey=1;
    y=ty;
    x=tx;
  }

  void display() {
//    image(img, x, y, 25, 25);
//    image(img, x/2, y/2, 25,25);
if (mouseX>x && mouseX<x+25 && mouseY>y && mouseY<y+25){
//    fill(random(255),random(255),random(255));
y=0;
  }
    ellipse(x, y, 25, 25);
  }

  void move() { 
    y++;
    loc.x=loc.x+1;
    loc.x+=bouncex;
    loc.y+=bouncey;
    loc.y=loc.y+1;
    if (y>height) {
      y=-12;
      x=random(width);
    }
  }
}

