class SceneGameOver {
  Button menuButton;

  SceneGameOver() {
    menuButton = new Button(width/2-(250/2), height/2, 250, 100, "MENU");
  }

  void update() {
    menuButton.update();
    if (menuButton.isPressed) {
      delay(100);
      switchToTitle();
    }
  }

  void draw() {
    background(0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(75);
    text("GAME OVER", width/2, 75);
    menuButton.draw();
  }
}
