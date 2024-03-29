class SceneLearn {
  Button backButton;
  Button explainButton;
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
  String prevScreen;
  String name;


  SceneLearn(String previousScreen) {
    backButton = new Button(width/2-(250/2), 600, 250, 100, "BACK");
    explainButton = new Button(1000, 475,250,100, "TRY IT");
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
    prevScreen = previousScreen;
  }

  void update() {
    //Button Update Functions
    backButton.update();
    explainButton.update();
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
    if (explainButton.isPressed) switchToExplain(name);
    if (backButton.isPressed) {
      if (prevScreen == "Title") {
        switchToTitle();
      }
      if (prevScreen == "Game") {
        switchToPlay();
      }
    }
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
    text(explain, width/2, 200);
    text("EXAMPLES", width/2, 350);
    text(example, width/2, 400);
    //Draw Buttons
    backButton.draw();
    explainButton.draw();
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
    name = "add";
  }
  void minusExplain() {
    title = "MINUS";
    explain = "Subtracts one value from another. \nMay also be used to make a value negative";
    example = "//Sets a to 25\nint a = 35 - 10;\n//Sets b to -2\nint a = 2;\nint b = -a;";
    name = "minus";
  }
  void divideExplain() {
    title = "DIVIDE";
    explain = "Divides one value from another";
    example = "//Sets a to 5\nint a = 20/4;";
    name = "divide";
  }
  void multiplyExplain() {
    title = "MULTIPLY";
    explain = "Multiplies two values together";
    example = "//sets a to 100\nint a = 25*4;";
    name = "mult";
  }
  void incrementExplain() {
    title = "INCREMENT";
    explain = "Increases an integer by 1";
    example = "//sets b to 101\nint a = 100;\nint b = a++;";
    name = "incre";
  }
  void decrementExplain() {
    title = "DECREMENT";
    explain = "Decreases an integer by 1";
    example = "//sets b to 4\nint a = 5;\nint b = a--;";
    name = "decre";
  }
  void addAssignExplain() {
    title = "ADD ASSIGN";
    explain = "Combines addition and assignment into one operator";
    example = "//Set a to 34\nint a = 12;\na += 22;";
    name = "addAsign";
  }
  void minusAssignExplain() {
    title = "SUBTRACT ASSIGN";
    explain = "Combines subtraction and assignment into one operator";
    example = "//Sets a to 3\nint a = 13;\n a -= 10;";
    name = "subAsign";
  }
  void divideAssignExplain() {
    title = "DIVIDE ASSIGN";
    explain = "Combines division and assignment into one operator";
    example = "//sets a to 12\nint a = 24;\na /= 2;";
    name = "divAsign";
  }
  void multiplyAssignExplain() {
    title = "MULTIPLY ASSIGN";
    explain = "Combines multiplication and assignment\ninto one operator";
    example = "//sets a to 52\nint a = 13;\na *= 4;";
    name = "multAsign";
  }
  void moduloExplain() {
    title = "MODULO";
    explain = "Calculates the remainder when one value\nis divided by another";
    example = "//Sets a to 3\n int a = 27%6";
    name = "mod";
  }
  void notExplain() {
    title = "LOGICAL NOT";
    explain = "Inverts a boolean expression\nReturn false if true and return true if false";
    example = "//Sets a to true\nboolean a = false;\na=!a;";
    name = "not";
  }
  void andExplain() {
    title = "LOGICAL AND";
    explain = "Compares two expressions and returns true\nonly if both are true";
    example = "//Prints ''Hello World'' if true\n int a = 10; \nboolean b = false;\nif(a < 20 && !b){ println(''Hello World'');}\nHellow World";
    name = "and";
  }
  void orExplain() {
    title = "LOGICAL OR";
    explain = "Compares two expressions and returns true\nif one or both are true";
    example = "//Prints ''Hello World'' if true\n int a = 20; \nboolean b = false;\nif(a >= 20 || b){ println(''Hello World'');}\nHellow World";
    name = "or";
  }
  void condExplain() {
    title = "CONDITIONAL";
    explain = "A short cut for writing an IF and ELSE statement";
    example = "result = test ? expression1 : expression2\n//This is the equivalent the above structure\nif(test){result = expression1}\nelse{result = expression2} ";
    name = "cond";
  }
  void equalExplain() {
    title = "EQUALITY";
    explain = "Check is two values are the same\nPlease note that this is different\nfrom the assignment operator(=)";
    example = "//Prints ''Hello World'' if true\n int a = 23;\nint b = 23;\nif(a == b){println(''Hello World'');}\nHello World";
    name = "equal";
  }
  void lessExplain() {
    title = "LESS THAN";
    explain = "Checks if one value is smaller then another";
    example = "//Prints ''Hello World'' if true\n int a = 2;\nint b = 10;\nif(a < b){println(''Hello World'');}\nHello World";
    name = "less";
  }
  void greatExplain() {
    title = "GREATER THAN";
    explain = "Checks if one value is larger then another";
    example = "//Prints ''Hello World'' if true\n int a = 35;\nint b = 15;\nif(a > b){println(''Hello World'');}\nHello World";
    name = "great";
  }
  void lessEqualExplain() {
    title = "LESS THAN OR EQUAL TO";
    explain = "Checks if one value is smaller or equal to then another";
    example = "//Prints ''Hello World'' if true\n int a = 16;\nint b = 16;\nif(a <= b){println(''Hello World'');}\nHello World";
    name = "lessEqual";
  }
  void greatEqualExplain() {
    title = "GREATER THAN OR EQUAL TO";
    explain = "Checks if one value is larger or equal to then another";
    example = "//Prints ''Hello World'' if true\n int a = 42;\nint b = 12;\nif(a >= b){println(''Hello World'');}\nHello World";
    name = "greatEqual";
  }
}
