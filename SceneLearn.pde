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
  Button moduloButton;
  Button notButton;
  Button andButton;
  Button orButton;
  Button condButton;
  Button equalButton;
  Button lessButton;
  Button greatButton;
  Button lessEqualButton;
  Button greatEqualButton;
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
    moduloButton = new Button(110, 75, 50, 50, "%");
    notButton = new Button(110, 135, 50, 50, "!");
    andButton = new Button(110, 195, 50, 50, "&&");
    orButton = new Button(110, 255, 50, 50, "||");
    condButton = new Button(110, 315, 50, 50, "?:");
    equalButton = new Button(110, 375, 50, 50, "==");
    lessButton = new Button(110, 435, 50, 50, "<");
    greatButton = new Button(110, 495, 50, 50, ">");
    lessEqualButton = new Button(110, 555, 50, 50, "<=");
    greatEqualButton = new Button(110, 615, 50, 50, ">=");
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
    moduloButton.update();
    notButton.update();
    andButton.update();
    orButton.update();
    condButton.update();
    equalButton.update();
    lessButton.update();
    greatButton.update();
    lessEqualButton.update();
    greatEqualButton.update();
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
    if (moduloButton.isPressed) moduloExplain();
    if (notButton.isPressed) notExplain();
    if (andButton.isPressed) andExplain();
    if (orButton.isPressed) orExplain();
    if (condButton.isPressed) condExplain();
    if (equalButton.isPressed) equalExplain();
    if (lessButton.isPressed) lessExplain();
    if (greatButton.isPressed) greatExplain();
    if (lessEqualButton.isPressed) lessEqualExplain();
    if (greatEqualButton.isPressed) greatEqualExplain();
    if (backButton.isPressed) switchToTitle();
  }

  void draw() {
    background(100);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(60);
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
    moduloButton.draw();
    notButton.draw();
    andButton.draw();
    orButton.draw();
    condButton.draw();
    equalButton.draw();
    lessButton.draw();
    greatButton.draw();
    lessEqualButton.draw();
    greatEqualButton.draw();
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
  void moduloExplain() {
    title = "MODULO";
  }
  void notExplain() {
    title = "LOGICAL NOT";
  }
  void andExplain() {
    title = "LOGICAL AND";
  }
  void orExplain() {
    title = "LOGICAL OR";
  }
  void condExplain() {
    title = "CONDITIONAL";
  }
  void equalExplain() {
    title = "EQUALITY";
  }
  void lessExplain() {
    title = "LESS THAN";
  }
  void greatExplain() {
    title = "GREATER THAN";
  }
  void lessEqualExplain() {
    title = "LESS THAN OR EQUAL TO";
  }
  void greatEqualExplain() {
    title = "GREATER THAN OR EQUAL TO";
  }
}
