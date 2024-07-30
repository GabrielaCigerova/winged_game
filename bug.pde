class Bug {
  float x, y;
  int frameNum = 0;

  Bug(float startX, float startY) {
    x = startX;
    y = startY;
  }
 
  void display() {
    frameNum++;
    frameNum %= bug.length;
    image(bug[frameNum], x, y);
  }

  void move() {
    x -= 18; 
    if (x < -20) {
      reset();
    }
  }

  void reset() {
    x = width + 20;
    y = random(20, height - 20);
  }
}
