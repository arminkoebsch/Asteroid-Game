
Astroid[] astroids;
int n = 10;
boolean died = false;
int shipx;

void setup() {
  size(600, 600, P2D);
  astroids = new Astroid[n];
  int i = 0;
  while (i < n) {
    astroids[i] = new Astroid();
    i++;
  }
}

void draw() {
  if (died == false) {
    background(255);

    //---------- Spaceship ----------//
    shipx = mouseX;
    ellipse(shipx, 550, 40, 40);

    //---------- Asteriods ----------//
    int i = 0;
    while (i < n) {
      astroids[i].act();
      astroids[i].show();
      astroids[i].respawn();
      astroids[i].collide();
      i++;
    }
  }
  void mouseClicked() {
    i = 0;
    while (i < n) {
      astroids[i].respawn();
      died = true;
      i++;
    }
  }
}
