class Person {
  PVector loc, vel;
  int d= 25;
  PImage slowman;
  Person() {
    loc= new PVector(random(d*-500, -d*10), height-d);
    //this controls the location from which the person will begin walking
    vel= new PVector (random(1, 5), 0);
    //this controls the speed of the person
    slowman= loadImage("slow man.png");
    imageMode(CENTER);
    //this is the image used for the person
  }
  void display() {
    image(slowman, loc.x, loc.y, 100, 100);
    //this displays the person
  }
  void walk() {
    loc.add(vel);
    //this adds speed to the location of the person (gives the person speed)
  }
}  

