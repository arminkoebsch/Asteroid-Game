
Asteroid[] asteroids;
int n = 10;
boolean died = false;
int shipx;

void setup() {
  size(600, 600, P2D);
  asteroids = new Asteroid[n];
  int i = 0;
  while (i < n) {
    asteroids[i] = new Asteroid();
    i++;
  }
}

void draw() {
  if (died == false) {
    background(0);

    //---------- Spaceship ----------//
    shipx = mouseX;
    fill(150);
    stroke(255);
    ellipse(shipx, 550, 40, 40);

    //---------- Asteriods ----------//
    int i = 0;
    while (i < n) {
      asteroids[i].act();
      asteroids[i].show();
      asteroids[i].respawn();
      asteroids[i].collide();
      i++;
    }
  }
}

void mousePressed() {
  int i = 0;
  while (i < n) {
    asteroids[i].restart();
    died = false;
    i++;
  }
}
