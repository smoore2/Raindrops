class Person {
  PVector loc;
  int d= 25;
  int x=0;
  Person() {
    strokeWeight(15);
    loc= new PVector(x, height-d);
  }
  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void walk() {
    loc.x=loc.x+1;
    if (loc.x>width) {
      loc.x=0;
    }
  }
  void checkPerson(Raindrop drop){
if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.loc.set(-width, height*10);
      points--;
}}}

