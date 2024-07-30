void setup() {
  
  fullScreen();
  frameRate(15);
  
    loadAll();
    initBird();
    initBug();
    initWasp();
    
    //fireflies
    for (int i =0; i< flies.length; i++) {
    flies[i] = new Fireflies();
    }

    for (int i = 0; i < bugs.length; i++) {
      float bugStartX = width + 20 + i * 200; // Staggered starting positions???
      float bugStartY = random(20, height - 20);
      bugs[i] = new Bug(bugStartX, bugStartY);
    }

    for (int i = 0; i < wasps.length; i++) {
      float waspStartX = width + 20 + i * 200; // Staggered starting positions???
      float waspStartY = random(20, height - 20);
      wasps[i] = new Wasp(waspStartX, waspStartY);
    }
}


void draw() {

  if (startGame==false || gameOver!=false) {
    image(bgDark, bgx, bgy);
    
    if (startGame==false )  {
      startGame();
  
    //Pointer
    ellipseMode(CENTER);
    noStroke();
    fill(255);
    
    if (keyPressed && key==CODED) {
      if (keyCode == DOWN && pointerY <= 570) {
        pointerY += 80;
      } else if (keyCode == UP && pointerY > 490) {
        pointerY -= 80;
      }
    }
    ellipse(pointerX, pointerY, 16, 16);
    
    if (keyPressed && key == ENTER ) {
      if (pointerY == 490) {
        startGame = true;
      } else if (pointerY == 570) {
        println("Now you can see my credits in the terminal.");
      } else if (pointerY == 650) {
        exit();
      }
    }
    } else if (gameOver==true ){
      gameOver();
      //I vuw Gaby <3 
    //Pointer
    ellipseMode(CENTER);
    noStroke();
    fill(255);
      
      if (keyPressed && key==CODED) {
      if ((keyCode == DOWN || keyCode == RIGHT) && pointerXa < 1180) {
        pointerXa += 480;
      } else if ((keyCode == UP|| keyCode == LEFT) && pointerXa > 700) {
        pointerXa -= 480;
      }
    }
    ellipse(pointerXa, pointerYa, 16, 16);
    
    if (keyPressed && key == ENTER) {
      if (pointerXa == 700) {
        startGame = true;
        gameOver = false;
        bgx=0;
        bgy=0;
        score=0;
      } else if (pointerXa == 1180) {
        startGame=false;
        gameOver =false;
        startGame();
      }
      }
    }
      
  } else if (startGame==true && gameOver!=true) {

    //Scrolling background
    image(bg, bgx, bgy);
    image(bg, bgx+bg.width, bgy);
    bgx = bgx-4;
    if (bgx < -bg.width) {
      bgx =0;
    }

    //Fireflies
    for (int i =0; i< flies.length; i++) {
      flies[i].flying();
      flies[i].firefly();
    }

    //Bugs
    for (int i = 0; i < bugs.length; i++) {
      bugs[i].move();
      bugs[i].display();
    }

    //Wasps
    for (int i = 0; i < wasps.length; i++) {
      wasps[i].move();
      wasps[i].display();
    }

    //Animated bird
    imageMode(CENTER);
    frameNum++;
    frameNum %= bird.length;
    image(bird[frameNum], birdx, birdy);
    imageMode(CORNER);


    //score managment
    scoreActive();
     if (score<0){
    gameOver = true;
    gameOver(); 
    }

    //Bug + wasp counter
    bugCounter();
    waspCounter();
  }
}
