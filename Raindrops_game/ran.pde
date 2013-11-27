bouncer b1, b2, b3, b4, b5, b6, b7,b8,b9,b10;
catcher c1;
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  b1= new bouncer(random(width/2, width), random(width-800, 0)) ;
  b2= new bouncer(random(width/2, width), random(width-800, 0));
  b3= new bouncer(random(width/2, width), random(width-800, 0));
  b4= new bouncer(random(width/2, width), random(width-800, 0));
  b5=new bouncer(random(width/2, width), random(width-850, 0));
  b6=new bouncer(random(width/2, width), random(width-850, 0));
  b7=new bouncer(random(width/2, width), random(width-850, 0));
  b8=new bouncer(random(width/2, width), random(width-850, 0));
  b9=new bouncer(random(width/2, width), random(width-850, 0));
  b10=new bouncer(random(width/2, width), random(width-850, 0));
  c1= new catcher();
}
void draw() {
  background(230, 79, 42);
  b1.display();
  b1.move();
  b2.display();
  b2.move();
  b3.display();
  b3.move();
  b4.display();
  b4.move();
  b5.display();
  b5.move();
  b6.display();
  b6.move();
  b7.display();
  b7.move();
  b8.display();
  b8.move();
  b9.display();
  b9.move();
  b10.display();
  b10.move();
  c1.display();
}
