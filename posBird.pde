void keyPressed() {
  if (key == CODED) {  // Check if the key is a special key (like UP or DOWN)
    if (keyCode == UP && birdy > 0) {
      birdy -= moveY;  // Move up
    } else if (keyCode == DOWN && birdy < height) {
      birdy += moveY;  // Move down
    }
  }
}
