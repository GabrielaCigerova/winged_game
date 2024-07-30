void gameOver () {
  
    bgx = 0;
    bgy = 0;
    int textPosX = 900;
    int textPosY = 480;
    
    textFont(smallTitleFont);
    textAlign(CENTER);
    fill(255);
    text("You have flown far, little bird...", textPosX+50, textPosY-100);
    textFont(mediumFont);
    textAlign(CENTER);
    text("Your score was too low.", textPosX+50,textPosY);
    text("Try again", textPosX-280,textPosY+190);
    text("Main menu", textPosX+370,textPosY+190);
    
  
  //Fireflies
  for (int i =0; i< flies.length; i++) {
    flies[i].flyingRandom();
    flies[i].firefly();
  }
  
}
