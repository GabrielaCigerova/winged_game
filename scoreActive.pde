void scoreActive () {
  
  //score table
  noFill();
  rect(width-450, height-150, 400, 100, 20);
  fill(255);
  textFont(mainFont);
  text("Score: ", width-275, height-130);
  text(score, width-130, height-130);
  
}
