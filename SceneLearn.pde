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
  String title;
  String explain;
  String example;
  

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
    //Button Update Functions
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
    //Button pressed Functions
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
    background(0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(60);
    text(title, width/2, 75);
    stroke(255);
    strokeWeight(3);
    fill(50);
    rect(300, 150, 680, 425, 3);
    textSize(25);
    fill(255);
    textAlign(CENTER);
    text(explain,width/2, 200);
    text("EXAMPLES",width/2, 350);
    text(example,width/2,400);
    //Draw Buttons
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
    explain = "Calculate the sum of two values or\ncombines two strings into one";
    example = "//Sets a to 20\nint a = 15 + 5;\n//Prints the string ''Operator1234''\nint i = 1234;\nprint(''Operator'' + i);";
    
  }
  void minusExplain() {
    title = "MINUS";
    explain = "Subtracts one value from another. \nMay also be used to make a value negative";
    example = "//Sets a to 25\nint a = 35 - 10;\n//Sets b to -2\nint a = 2;\nint b = -a;";
  }
  void divideExplain() {
    title = "DIVIDE";
    explain = "Divides one value from another";
    example = "//Sets a to 5\nint a = 20/4;"; 
  }
  void multiplyExplain() {
    title = "MULTIPLY";
    explain = "Multiplies two values together";
    example = "//sets a to 100\nint a = 25*4;";
  }
  void incrementExplain() {
    title = "INCREMENT";
    explain = "Increases an integer by 1";
    example = "//sets b to 101\nint a = 100;\nint b = a++;";
  }
  void decrementExplain() {
    title = "DECREMENT";
    explain = "Decreases an integer by 1";
    example = "//sets b to 4\nint a = 5;\nint b = a--;";
  }
  void addAssignExplain() {
    title = "ADD ASSIGN";
    explain = "Combines addition and assignment into one operator";
    example = "//Set a to 34\nint a = 12;\nint b = 22;\na += b;";
  }
  void minusAssignExplain() {
    title = "SUBTRACT ASSIGN";
    explain = "Combines subtraction and assignment into one operator";
  }
  void divideAssignExplain() {
    title = "DIVIDE ASSIGN";
    explain = "Combines division and assignment into one operator";
  }
  void multiplyAssignExplain() {
    title = "MULTIPLY ASSIGN";
    explain = "Combines multiplication and assignment\ninto one operator";
  }
  void moduloExplain() {
    title = "MODULO";
    explain = "Calculates the remainder when one value\nis divided by another";
    
  }
  void notExplain() {
    title = "LOGICAL NOT";
    explain = "Inverts a boolean expression\nReturn false if true and return true if false";
  }
  void andExplain() {
    title = "LOGICAL AND";
    explain = "Compares two expressions and returns true\nonly if both are true";
  }
  void orExplain() {
    title = "LOGICAL OR";
    explain = "Compares two expressions and returns true\nif one or both are true";
  }
  void condExplain() {
    title = "CONDITIONAL";
    explain = "A short cut for writing an IF and ELSE statement";
  }
  void equalExplain() {
    title = "EQUALITY";
    explain = "Check is two values are the same\nPlease note that this is different\nfrom the assignment operator(=)";
  }
  void lessExplain() {
    title = "LESS THAN";
    explain = "Checks if one value is smaller then another";
  }
  void greatExplain() {
    title = "GREATER THAN";
    explain = "Checks if one value is larger then another";
  }
  void lessEqualExplain() {
    title = "LESS THAN OR EQUAL TO";
    explain = "Checks if one value is smaller or equal to then another";
  }
  void greatEqualExplain() {
    title = "GREATER THAN OR EQUAL TO";
    explain = "Checks if one value is larger or equal to then another";
  }
}
