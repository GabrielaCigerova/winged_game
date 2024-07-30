  void loadAll() {
  bg =loadImage("bgforest.png");
  bgDark =loadImage("bgforestdark.png");
  mainMenu = loadImage("mainmenu.png");
  gameOverImg = loadImage("gameover.png");
  mainFont = createFont("Boogaloo-Regular.ttf", 60);
  mediumFont = createFont("Boogaloo-Regular.ttf", 40);
  titleFont = createFont("LaBelleAurore-Regular.ttf", 150);
  smallTitleFont = createFont("LaBelleAurore-Regular.ttf", 80);
  file = new SoundFile(this, "Winged.mp3");
  file.loop();
 }
