void startGame () {
    int textPosX = 1000;
    int textPosY = 510;
    
    textFont(titleFont);
    textAlign(LEFT);
    fill(255);
    text("Winged", textPosX-300, textPosY-120);
    
    textFont(mainFont);
    text("Start game", textPosX,textPosY);
    text("Credits", textPosX,textPosY+80);
    text("Exit", textPosX,textPosY+160);
    
  
  //Fireflies
  for (int i =0; i< flies.length; i++) {
    flies[i].flyingRandom();
    flies[i].firefly();
  }
  
}
