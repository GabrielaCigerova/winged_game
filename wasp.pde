class Wasp {
  float x, y;
  int frameNum = 0;

  Wasp(float startX, float startY) {
    x = startX;
    y = startY;
  }

  void move() {
    x -= 50;
    if (x < -50) {
      reset();
    }
  }

  void display() {
    frameNum++;
    frameNum %= wasp.length;
    image(wasp[frameNum], x, y);
  }

  void reset() {
    x = width + 500;
    y = random(20, height - 20);
  }
}
