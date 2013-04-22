//  NON-ARRAY VERSION
//Ball b1, b2;
//void setup() {
//  size(500, 500);
//  b1 = new Ball(200);
//  b2 = new Ball(20);
//}
//
//void draw() {
//  background(0);  
//  b1.display();
//  b2.display();
//  b1.move();
//  b2.move();
//  b1.bounce(b2);
//  b2.bounce(b1);
//}

Ball[] balls = new Ball[30];
//type[] name = new type[length];
void setup() {
  size(500, 500);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(20);
  }
}

void draw() {
  background(0);  
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].move();
  }
}

