class Raindrop {
  PVector loc, vel;
  int d= 25;
  PImage drop;

  Raindrop() {
    loc= new PVector(random(width), -d);
    //this controls the location at which the ellipse will fall, a random x value
    vel= new PVector (0, random(2, 5));
    //this controls the speed at which the ellipse will fall
    drop= loadImage("drop.png");
    imageMode(CENTER);
  }

  void display() {
    image(drop,loc.x, loc.y,30,30);
  }
  //this creates an ellipse at a random width and a set height with a radius of d

  void drop() { 
    loc.add(vel);
    //this causes the ellipse to fall
  }
}

