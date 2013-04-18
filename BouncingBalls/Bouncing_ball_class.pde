class Ball {
  float x;
  float y;
  float d;
  float r;
  float xspeed;
  float yspeed;

  Ball(float td) {
    d=td;
    r=d/2;
    x=random(d, width-d);
    y=random(d, height-d);
    xspeed=random(1, 5);
    yspeed=random(1, 5);
  }
  void display() {
    fill(255);
    strokeWeight(5);
    stroke(0, 100, 255);
    ellipse(x, y, d, d);
  }
  void move() {
    x+=xspeed;
    y+=yspeed;
    if (x-r<0 || x+r>width) {
      xspeed=-xspeed;
    }
    if (y-r<0 || y+r>height) {
      yspeed=-yspeed;
    }
  }
}

