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
  boolean checkCollision(Ball b) {          //This method checks to see if my object is touching another Ball object, and returns true or false
    if (dist(x, y, b.x, b.y)<r+b.r) {       //I can use this inside another method, so i can have various methods for different behaviors when touching with less work
      print("touch");                       //I use print() to make sure the method recognizes intersections as expected
      return true;                          //When you try something new, use print() like this to make sure the code is running when you think it is
    }                                    
    else {
      print("...");
      return false;
    }
  }
  void bounce(Ball b) {                     
    if (checkCollision(b)) {
      xspeed=-xspeed;
      yspeed=-yspeed;
    }
  }
}

