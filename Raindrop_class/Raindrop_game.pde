int points=0;
int oldtime= 0;
int newtime= 0;
int changetime= 0;
int index= 1;
Raindrop[] r = new Raindrop[500];
//this creates 500 falling raindrops
Catcher c1;
//this calls upon the catcher
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
   //this for loop causes the raindrops to be displayed and fall
  c1= new Catcher();
  //this creates a "catcher"
}

void draw() {
  background(230, 79, 42);
  fill(0);
  textSize(25);
  text(points, height/2, width/2);
  //this displays the "points" or the amount of raindrops caught in the middle of the screen
  newtime= millis();
  changetime= newtime - oldtime;
  if (changetime>= 500) {
    oldtime= newtime;
//this means that if 500 milliseconds have gone by, a new raindrop will fall
    if (index< r.length) {
      index++;
    }
  }
  for (int i = 0; i < index ; i++) {
    r[i].display();
    r[i].drop();
    c1.checkCatcher(r[i]);
    //this causes the raindrops to actually fall on the screen, and for the program to check whether or not the catcher has touched a raindrop
  }
  c1.display();
  c1.update();
  //this displays the catcher on the screen and updates its location for each frame
}

