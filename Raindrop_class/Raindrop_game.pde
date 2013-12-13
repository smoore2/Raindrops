int points=0;
int oldtime= 0;
int newtime= 0;
int changetime= 0;
int index= 1;
PImage city;
Raindrop[] r = new Raindrop[500];
Catcher c1;  
void setup() {
  city= loadImage ("city.png");
  imageMode(CENTER);
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
  c1= new Catcher();
}

void draw() {
  image(city, width/2, height/2,width,height);
  fill(0);
  textSize(25);
  text(points, 50, 50);
  newtime= millis();
  changetime= newtime - oldtime;
  if (changetime>= 500) {
    oldtime= newtime;

    if (index< r.length) {
      index++;
    }
  }
  for (int i = 0; i < index ; i++) {
    r[i].display();
    r[i].drop();
    c1.checkCatcher(r[i]);
  }
  c1.display();
  c1.update();
}

