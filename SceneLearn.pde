class SceneLearn {
  Button backButton;
  String title;

  SceneLearn() {
    backButton = new Button(width/2-(250/2), 600, 250, 100, "BACK");
  }

  void update() {
    backButton.update();
    if (backButton.isPressed) {
      switchToTitle();
    }
  }

  void draw() {
    background(100);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(75);
    text("title", width/2, 75);
    backButton.draw();
  }
}
