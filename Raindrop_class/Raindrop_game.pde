boolean run;
int points=0;
int oldtime= 0;
int newtime= 0;
int changetime= 0;
int index= 1;
PImage city, mrraindrop;
Raindrop[] r = new Raindrop[1000];
Person[] p = new Person[200];
Person p1;
Catcher c1;
void setup() {
  city= loadImage ("city.jpg");
  mrraindrop= loadImage("mr raindrop.jpg.png");
  imageMode(CENTER);
  size(700, 700);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < p.length; i++) {
    p[i] = new Person();
  }
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
  c1= new Catcher();
  p1= new Person();
}

void draw() {
  background(150);
  if (run == true) {
    image(city, width/2, height/2, width, height);
    fill(0);
    textSize(25);
    text(points, 50, 50);


    if (points >= 50) {
      textSize(30);
      fill(255, 0, 0);
      textAlign(CENTER);
      text("you win!", width/2, height/4);
      text("play again", width/2, height/2);
    }
    newtime= millis();
    changetime= newtime - oldtime;

    for (int i = 0; i < index ; i++) {
      r[i].display();
      r[i].drop();
      p[i].display();
      p[i].walk();
      c1.checkCatcher(r[i]);
      //      c1.checkPerson(r[i]);
    }

    c1.display();
    c1.update();
    p1.display();
    p1.walk();

    if (changetime>= 500) {
      oldtime= newtime;

      if (index< r.length) {
        index++;
      }
    }
  }
  else {
    background(mouseX);
    image(mrraindrop, width/2, height/2, width, height);
    textSize(28);
    fill(255);
    text("[PRESS ANY KEY TO START]", width/12, height/2.5);
  }
}

//this says that if you press any key, the game starts
void keyPressed() {
  run = true;
}
void mousePressed() {
  if (mouseX <= width/2 && mouseX >= width/4 && mouseY <= height/2 && mouseY >= height/4 && points >= 50 || points<=-5 ) {
    points = 0;
  }
}

