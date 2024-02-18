class SceneTitle {
  Button playButton;
  Button learnButton;
  Button quitButton;

  SceneTitle() {
    playButton = new Button(width/2-(250/2), 235, 250, 100, "PLAY");
    learnButton = new Button(width/2-(250/2), 360, 250, 100, "LEARN");
    quitButton = new Button(width/2-(250/2), 475, 250, 100, "QUIT");
  }
  void update() {
    playButton.update();
    learnButton.update();
    quitButton.update();
    if (playButton.isPressed) {
    }
    if (learnButton.isPressed) {
      switchToLearn();
    }
    if (quitButton.isPressed) {
      exit();
    }
  }
  void draw() {
    background(100);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(75);
    text("OPERATORS", width/2, 75);
    playButton.draw();
    learnButton.draw();
    quitButton.draw();
  }
}
