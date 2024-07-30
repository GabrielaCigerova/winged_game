void bugCounter () {
  for (int i = 0; i < bugs.length; i++) {
    if (dist(birdx, birdy, bugs[i].x, bugs[i].y) < 50) {
      score += 2;
      bugs[i].reset();
    }
  }
}
