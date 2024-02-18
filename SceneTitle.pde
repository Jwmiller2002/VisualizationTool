class SceneTitle {
  Button learnButton;
  Button quitButton;

  SceneTitle() {
    learnButton = new Button(width/2-(250/2), 360, 250, 100, "LEARN");
  }
  void update() {
    learnButton.update();
  }
  void draw() {
    background(100);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(75);
    text("OPERATORS", width/2,100);
    learnButton.draw();
  }
}
