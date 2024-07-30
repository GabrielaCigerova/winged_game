void credits () {
 
    bgx = 0;
    bgy = 0;
    int textPosX = 900;
    int textPosY = 480;
    
    textFont(smallTitleFont);
    textAlign(CENTER);
    fill(255);
    text("Credits", textPosX, textPosY-100);
    textFont(mediumFont);
    textAlign(CENTER);
    text("These are incredible credits.", textPosX,textPosY);
    text("Go back", textPosX+320,textPosY+190);
    
  
  //Fireflies
  for (int i =0; i< flies.length; i++) {
    flies[i].flyingRandom();
    flies[i].firefly();
  }

}
