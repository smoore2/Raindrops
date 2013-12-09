Raindrop[] r = new Raindrop[500];

void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
}

void draw() {
  background(230, 79, 42);
  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].drop();
  }
}//Raindrop r1, r2, r3, r4, r5, r6, r7,r8,r9,r10;
//Catcher c1;
//void setup() {
//  size(500, 500);
//  colorMode(HSB, 360, 100, 100);
//  r1= new Raindrop(random(width/2, width), random(width-800, 0)) ;
//  r2= new Raindrop(random(width/2, width), random(width-800, 0));
//  r3= new Raindrop(random(width/2, width), random(width-800, 0));
//  r4= new Raindrop(random(width/2, width), random(width-800, 0));
//  r5=new Raindrop(random(width/2, width), random(width-850, 0));
//  r6=new Raindrop(random(width/2, width), random(width-850, 0));
//  r7=new Raindrop(random(width/2, width), random(width-850, 0));
//  r8=new Raindrop(random(width/2, width), random(width-850, 0));
//  r9=new Raindrop(random(width/2, width), random(width-850, 0));
//  r10=new (random(width/2, width), random(width-850, 0));
//  c1= new Catcher();
//}
//void draw() {
//  background(230, 79, 42);
//  r1.display();
//  r1.move();
//  r2.display();
//  r2.move();
//  r3.display();
//  r3.move();
//  r4.display();
//  r4.move();
//  r5.display();
//  r5.move();
//  r6.display();
//  r6.move();
//  r7.display();
//  r7.move();
//  r8.display();
//  r8.move();
//  r9.display();
//  r9.move();
//  r10.display();
//  r10.move();
//  c1.display();
//  c1.update();
//}
