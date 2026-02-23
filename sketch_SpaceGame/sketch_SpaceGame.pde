
Astroid[] astroids;
int n = 10;

int shipx;

void setup(){
  size(600, 600, P2D);
  astroids = new Astroid[n];
  int i = 0;
  while (i < n) {
    astroids[i] = new Astroid();
    i++;
  }
}

void draw(){
  
  background(255);
  
  //---------- Spaceship ----------//
  shipx = mouseX;
  ellipse(shipx, 550, 40, 80);
  
  //---------- Asteriods ----------//
  int i = 0;
  while (i < n) {
    astroids[i].act();
    astroids[i].show();
    i++;
  }
  i = 0;
  while (i < n) {
    astroids[i].respawn();
    i++;
  }

  
}

  
