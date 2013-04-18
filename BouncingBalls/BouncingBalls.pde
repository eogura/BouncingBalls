Ball b1, b2;
void setup() {
  size(500, 500);
  b1 = new Ball(200);
  b2 = new Ball(20);
}

void draw() {
  background(0);  
  b1.display();
  b2.display();
  b1.move();
  b2.move();
  b1.checkCollision(b2);
  b2.checkCollision(b1);
}


