//Operators Visualization Tool
//Copyleft 2024 Jon Miller
//Deltatime
float dt, prevTime = 0;

//Scenes
SceneTitle sceneTitle;
SceneLearn sceneLearn;
ScenePlay scenePlay;
SceneGameOver sceneGameOver;
SceneExplain sceneExplain;
String prevScene;

//Inputs
boolean leftMouseHeld = false;
boolean leftMouseClick = false;
boolean prevLeftMouseClick = false;

//Fonts
PFont anta;

//CRITCS
// Add Logical Explains
// Change font for code in the learn tab
// Move the Test button to bottom left in Game
// Add Back Button where test was in Game

void setup() {
  size(1280, 720, P2D);
  anta = createFont("Anta-Regular.ttf", 64);
  frameRate(60);
  textFont(anta);
  switchToTitle();
}
void draw() {
  calcDeltaTime();
  if (sceneTitle != null) {
    sceneTitle.update();
    if (sceneTitle != null) sceneTitle.draw();
  } else if (sceneLearn != null) {
    sceneLearn.update();
    if (sceneLearn != null) sceneLearn.draw();
  } else if (scenePlay != null) {
    scenePlay.update();
    if (scenePlay != null) scenePlay.draw();
  } else if (sceneGameOver != null) {
    sceneGameOver.update();
    if (sceneGameOver != null) sceneGameOver.draw();
  } else if (sceneExplain != null) {
    sceneExplain.update();
    if (sceneExplain !=null) sceneExplain.draw();
  }
}

// --- START DELTA TIME ---
void calcDeltaTime() {
  float currTime = millis();
  dt = (currTime - prevTime)/1000.0;
  prevTime = currTime;
}
// --- END DELTA TIME ---

// --- START INPUTS ---
void mousePressed() {
  leftMouseClick = true;
}
void mouseReleased() {
  leftMouseClick = false;
}

// --- END INPUTS

// --- START SCENES ---
void switchToTitle() {
  prevScene = "Title";
  sceneTitle = new SceneTitle();
  sceneLearn = null;
  scenePlay = null;
  sceneGameOver = null;
  sceneExplain = null;
}
void switchToLearn(String prevScreen) {
  sceneTitle = null;
  sceneLearn = new SceneLearn(prevScreen);
  scenePlay = null;
  sceneGameOver = null;
  sceneExplain = null;
}
void switchToPlay() {
  prevScene = "Game";
  sceneTitle = null;
  sceneLearn = null;
  scenePlay = new ScenePlay();
  sceneGameOver = null;
  sceneExplain = null;
}
void switchToGameOver() {
  sceneTitle = null;
  sceneLearn = null;
  scenePlay = null;
  sceneGameOver = new SceneGameOver();
  sceneExplain = null;
}
void switchToExplain(String name) {
  sceneTitle = null;
  sceneLearn = null;
  scenePlay = null;
  sceneGameOver = null;
  sceneExplain = new SceneExplain(name);
}
// --- END SCENES ---
