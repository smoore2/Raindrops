class Raindrop {
  PVector loc, vel;
  int d= 25;

  Raindrop() {
    loc= new PVector(random(width), -d);
    //this controls the location at which the ellipse will fall, a random x value
    vel= new PVector (0, random(2, 5));
    //this controls the speed at which the ellipse will fall
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
    //this creates an ellipse at a random width and a set height with a radius of d
  }

  void drop() { 
    loc.add(vel);
    //this causes the ellipse to fall
  }
}

