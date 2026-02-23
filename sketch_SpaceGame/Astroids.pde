class Astroid{
  
  float x, y, s;
  
  Astroid (){
    x = random(0, 600);
    y = random(-1000, 0);
    s = random(3, 15);
    
  }
  
  void show(){
    strokeWeight(5);
    stroke(0);
    fill(255);
    circle(x, y, 100);
    
  }
  
  void act(){
    y = y+s;
    
  }
  
  void respawn(){
    if (y > 700){
      x = random(0, 600);
      y = random(-1000, 0);
      s = random(3, 15);
    }
  }
  
  void collide(){
    if (dist(mouseX, 550, x, y)<70){
      died = true;
    }
  }
}
