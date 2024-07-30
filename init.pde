import processing.sound.*;
SoundFile file;

PImage bird []= new PImage[10];
PImage bug []= new PImage[9];
PImage wasp []= new PImage[6];
PImage bg;
PImage bgDark;
PImage mainMenu;
PImage gameOverImg;
PFont mainFont;
PFont mediumFont;
PFont titleFont;
PFont smallTitleFont;

//animation
int frameNum =0;

//background size
float bgx, bgy;

//pointer positions
int pointerX = 960;
int pointerY = 490;
int pointerXa = 700;
int pointerYa = 660;
    
//bird position
float birdx =300;
float birdy =500;
int moveY = 30;

int nBugs;
int score; //score

Fireflies[] flies = new Fireflies[20];
Bug[] bugs = new Bug[5];
Wasp[] wasps = new Wasp[1];

//basic game statements
boolean startGame = false;
boolean gameOver = false;
