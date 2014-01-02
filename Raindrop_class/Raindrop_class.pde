class Raindrop {
  PVector loc, vel;
  int d= 20;
  PImage drop;

  Raindrop() {
    loc= new PVector(random(width), -d);
    //this controls the location at which the drop will fall, a random x value
    vel= new PVector (0, random(2, 5));
    //this controls the speed at which the drop will fall
    drop= loadImage("drop.png");
    imageMode(CENTER);
    //this is the image that will be falling
  }

  void display() {
    image(drop, loc.x, loc.y, d, d);
    //this creates the drop at a random width and a set height with a radius of d
  }

  void drop() { 
    loc.add(vel);
    //this causes the drop to fall
  }
}

