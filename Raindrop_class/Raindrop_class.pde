class Raindrop {
  PVector loc, vel;
  int d= 25;

  Raindrop() {
    loc= new PVector(random(width), -d);
    vel= new PVector (0, random(2, 5));
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  void drop() { 
    loc.add(vel);
  }
}

