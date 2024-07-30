void waspCounter () {
  for (int i = 0; i < wasps.length; i++) {
    if (dist(birdx, birdy, wasps[i].x, wasps[i].y) < 70) {
      score -= 3;
      wasps[i].reset();
    }
  }
}
