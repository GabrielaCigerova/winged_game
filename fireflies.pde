class Fireflies {

  float x = random(width);
  float y = random(height);
  float z = random(0, 10);
  float xspeedActive = random(3, 10);
  float xspeed = random(-3, 3);
  float yspeed = random(-3, 3);
  int flySize = int(random(2, 7));

  void firefly () {
        ellipseMode(CENTER);
        noStroke();
        tint(255, 0);
        fill(240, 255, 255);
        ellipse(x, y, flySize, flySize);
        noTint();
  }

  void flying () {
    x =x-xspeedActive;
    if (x<0) {
      x=width;
    }
  }
  
  void flyingRandom() {
    x += xspeed;
    y += yspeed;

    if (x < 0) {
      x = width;
    } else if (x > width) {
      x = 0;
    }

    if (y < 0) {
      y = height;
    } else if (y > height) {
      y = 0;
    }
  }
}
