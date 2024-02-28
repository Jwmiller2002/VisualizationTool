class SceneExplain {
  String explain;
  String input = " ";
  Button numButton;
  Button backButton;

  SceneExplain(String name) {
    explain = name;
    numButton = new Button(100, 100, 75, 75, input);
    backButton = new Button(width/2-(250/2), 600, 250, 100, "BACK");
  }
  void update() {
    backButton.update();
    if (backButton.isPressed){
    delay(100);
    switchToLearn(prevScene);
    }
  }
  void draw() {
    background(0);
    backButton.draw();
  }
}
