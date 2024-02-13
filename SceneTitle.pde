class SceneTitle {
  Button learnButton;
  Button quitButton;

  SceneTitle() {
    learnButton = new Button(640, 360, 250, 100, "LEARN");
  }
  void update() {
    learnButton.update();
  }
  void draw() {
    background(100);
    learnButton.draw();
  }
}
