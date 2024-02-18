//Operators Visualization Tool
//Copyleft 2024 Jon Miller
//Deltatime
float dt, prevTime = 0;

//Scenes
SceneTitle sceneTitle;
SceneLearn sceneLearn;

//Inputs
boolean leftMouseHeld = false;
boolean leftMouseClick = false;
boolean prevLeftMouseClick = false;

void setup() {
  size(1280, 720, P2D);
  frameRate(60);
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
  sceneTitle = new SceneTitle();
  sceneLearn = null;
}
void switchToLearn() {
  sceneTitle = null;
  sceneLearn = new SceneLearn();
}
// --- END SCENES ---