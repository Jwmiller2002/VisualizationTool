class SceneLearn {
  Button backButton;
  Button addButton;
  Button minusButton;
  Button divideButton;
  Button multiplyButton;
  Button addAssignButton;
  Button minusAssignButton;
  Button divideAssignButton;
  Button multiplyAssignButton;
  String title = "ADDITION";

  SceneLearn() {
    backButton = new Button(width/2-(250/2), 600, 250, 100, "BACK");
    addButton = new Button(50, 75, 50, 50, "+");
    minusButton = new Button(50, 135, 50, 50, "-");
    divideButton = new Button(50, 195, 50, 50, "/");
    multiplyButton = new Button(50, 255,50,50,"*");
    addAssignButton = new Button(50,305,50,50,"+=");
    addExplain();
  }

  void update() {
    backButton.update();
    addButton.update();
    minusButton.update();
    divideButton.update();
    multiplyButton.update();
    addAssignButton.update();
    if (addButton.isPressed) addExplain();
    if (minusButton.isPressed) minusExplain();
    if (divideButton.isPressed) divideExplain();
    if (multiplyButton.isPressed) multiplyExplain();
    if (backButton.isPressed) switchToTitle();
    
  }

  void draw() {
    background(100);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(75);
    text(title, width/2, 75);
    stroke(0);
    strokeWeight(3);
    fill(250);
    rect(300, 150, 680, 400, 3);
    backButton.draw();
    addButton.draw();
    minusButton.draw();
    divideButton.draw();
    multiplyButton.draw();
    addAssignButton.draw();
  }

  void addExplain() {
    title = "ADDITION";
  }
  void minusExplain() {
    title = "MINUS";
  }
  void divideExplain() {
    title = "DIVIDE";
  }
  void multiplyExplain() {
    title = "MULTIPLY";
  }
}
