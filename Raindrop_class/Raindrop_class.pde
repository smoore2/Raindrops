class Raindrop {
  PImage img;
//  PVector loc;
  int Raindropx;
  int Raindropy;
  float y;
  float x;
  
  Raindrop(float tx, float ty) {
//    loc= new PVector(0, 0);
    //    img= loadImage("fallleaf.png");
    Raindropx=1;
    Raindropy=1;
    y=ty;
    x=tx;
  }

  void display() {
    //    image(img, x, y, 25, 25);
    //    image(img, x/2, y/2, 25,25);
    ellipse(x, y, 25, 25);
  }

  void move() { 
    y++;
//    loc.x=loc.x+1;
//    loc.x+=Raindropx;
//    loc.y+=Raindropy;
//    loc.y=loc.y+1;
    
  }
  
  void reset(){
      y=-12;
      x=random(width); 
  }

  void checkCatcher(Catcher c) {
    if (x > c.x && x < c.x + c.w && y > c.y && y < c.y + c.h){
      reset();
    }
  }
}

