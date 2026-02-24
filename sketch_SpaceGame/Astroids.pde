//Craters[] craters;
class Asteroid {

  float x, y, s;
  Asteroid () {
    x = random(0, 600);
    y = random(-1000, 0);
    s = random(3, 15);
  }

  void crater (float x2, float y2) {
    noStroke();
    fill(#BFA679);
    circle(x2, y2+4, 20);
    fill(#504531);
    circle(x2, y2, 20);
  }

  void show() {
    strokeWeight(5);
    stroke(#937A4C);
    fill(#7C5F28);
    circle(x, y, 100);
    //int i = 0;
    //while (i < n) {
      //craters[i].show();
     // i++;
   // }
  }

  void act() {
    y = y+s;
  }

  void respawn() {
    if (y > 700) {
      x = random(0, 600);
      y = random(-1000, 0);
      s = random(3, 15);
    }
  }

  void collide() {
    if (dist(mouseX, 550, x, y)<70) {
      died = true;
    }
  }
  void restart() {
    x = random(0, 600);
    y = random(-1000, 0);
    s = random(3, 15);
  }
}
