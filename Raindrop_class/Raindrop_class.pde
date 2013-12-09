class Raindrop {
  float y;
  float x;
  
  Raindrop() {
   x=random(width); 
  }

  void display() {
    ellipse(x, y, 25, 25);
  }

  void move() { 
    y++;    
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

