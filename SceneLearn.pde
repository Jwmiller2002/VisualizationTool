class SceneLearn {
  Button backButton;
  Button addButton;
  Button minusButton;
  Button divideButton;
  Button multiplyButton;
  Button incrementButton;
  Button decrementButton;
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
    multiplyButton = new Button(50, 255, 50, 50, "*");
    incrementButton = new Button(50, 315, 50, 50, "++");
    decrementButton = new Button(50, 375, 50, 50, "--");
    addAssignButton = new Button(50, 435, 50, 50, "+=");
    minusAssignButton = new Button(50, 495, 50, 50, "-=");
    divideAssignButton = new Button(50, 555, 50, 50, "/=");
    multiplyAssignButton = new Button(50, 615, 50, 50, "*=");
    addExplain();
  }

  void update() {
    backButton.update();
    addButton.update();
    minusButton.update();
    divideButton.update();
    multiplyButton.update();
    incrementButton.update();
    decrementButton.update();
    addAssignButton.update();
    minusAssignButton.update();
    divideAssignButton.update();
    multiplyAssignButton.update();
    if (addButton.isPressed) addExplain();
    if (minusButton.isPressed) minusExplain();
    if (divideButton.isPressed) divideExplain();
    if (multiplyButton.isPressed) multiplyExplain();
    if (incrementButton.isPressed) incrementExplain();
    if (decrementButton.isPressed) decrementExplain();
    if (addAssignButton.isPressed) addAssignExplain();
    if (minusAssignButton.isPressed) minusAssignExplain();
    if (divideAssignButton.isPressed) divideAssignExplain();
    if (multiplyAssignButton.isPressed) multiplyAssignExplain();
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
    incrementButton.draw();
    decrementButton.draw();
    addAssignButton.draw();
    minusAssignButton.draw();
    divideAssignButton.draw();
    multiplyAssignButton.draw();
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
  void incrementExplain() {
    title = "INCREMENT";
  }
  void decrementExplain() {
    title = "DECREMENT";
  }
  void addAssignExplain() {
    title = "ADD ASSIGN";
  }
  void minusAssignExplain() {
    title = "SUBTRACT ASSIGN";
  }
  void divideAssignExplain() {
    title = "DIVIDE ASSIGN";
  }
  void multiplyAssignExplain() {
    title = "MULTIPLY ASSIGN";
  }
}
