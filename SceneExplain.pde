class SceneExplain {
  String explain;
  String input = " ";
  String title = " ";
  float a = 0;
  float b;
  float c;
  boolean numIsPressed = false;
  Button numButton;
  Button backButton;
  Button zeroButton;
  Button oneButton;
  Button twoButton;
  Button threeButton;
  Button fourButton;
  Button fiveButton;
  Button sixButton;
  Button sevenButton;
  Button eightButton;
  Button nineButton;

  SceneExplain(String name) {
    explain = name;
    numButton = new Button(550, 275, 75, 75, input);
    backButton = new Button(width/2-(250/2), 600, 250, 100, "BACK");
    zeroButton = new Button(467, 390, 75, 75, "0");
    oneButton = new Button(557, 390, 75, 75, "1");
    twoButton = new Button(647, 390, 75, 75, "2");
    threeButton = new Button(737, 390, 75, 75, "3");
    fourButton = new Button(827, 390, 75, 75, "4");
    fiveButton = new Button(467, 480, 75, 75, "5");
    sixButton = new Button(557, 480, 75, 75, "6");
    sevenButton = new Button(647, 480, 75, 75, "7");
    eightButton = new Button(737, 480, 75, 75, "8");
    nineButton = new Button(827, 480, 75, 75, "9");
  }
  void update() {
    backButton.update();
    numButton.update();
    if (backButton.isPressed) {
      delay(100);
      switchToLearn(prevScene);
    }
    if (numButton.isPressed) numIsPressed = true;
    if (numIsPressed) {
      zeroButton.update();
      oneButton.update();
      twoButton.update();
      threeButton.update();
      fourButton.update();
      fiveButton.update();
      sixButton.update();
      sevenButton.update();
      eightButton.update();
      nineButton.update();
      if (zeroButton.isPressed) {
        numIsPressed = false;
        a = 0;
        input = "0";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (oneButton.isPressed) {
        numIsPressed = false;
        a = 1;
        input = "1";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (twoButton.isPressed) {
        numIsPressed = false;
        a = 2;
        input = "2";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (threeButton.isPressed) {
        numIsPressed = false;
        a = 3;
        input = "3";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (fourButton.isPressed) {
        numIsPressed = false;
        a = 4;
        input = "4";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (fiveButton.isPressed) {
        numIsPressed = false;
        a = 5;
        input = "5";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (sixButton.isPressed) {
        numIsPressed = false;
        a = 6;
        input = "6";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (sevenButton.isPressed) {
        numIsPressed = false;
        a = 7;
        input = "7";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (eightButton.isPressed) {
        numIsPressed = false;
        a = 8;
        input = "8";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
      if (nineButton.isPressed) {
        numIsPressed = false;
        a = 9;
        input = "9";
        numButton = null;
        numButton = new Button(550, 275, 75, 75, input);
      }
    }
  }
  void draw() {
    background(0);
    backButton.draw();
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(60);
    text(title, width/2, 75);
    if (numIsPressed) {
      stroke(255);
      strokeWeight(3);
      fill(0);
      rect((width/2)-(375/2), 375, 462, 195, 3);
      zeroButton.draw();
      oneButton.draw();
      twoButton.draw();
      threeButton.draw();
      fourButton.draw();
      fiveButton.draw();
      sixButton.draw();
      sevenButton.draw();
      eightButton.draw();
      nineButton.draw();
    }
    if (explain == "add") {
      title = "ADDITION";
      numButton.draw();
      b = 5;
      c = a + b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" + "+b + " = " + c, width/2, 300);
    } else if (explain == "minus") {
      title = "MINUS";
      numButton.draw();
      b = 5;
      c = a - b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" - "+b + " = " + c, width/2, 300);
    } else if (explain == "divide") {
      title = "DIVIDE";
      numButton.draw();
      b = 3;
      c = a / b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" / "+b + " = " + c, width/2, 300);
    } else if (explain == "mult") {
      title = "MULTIPLY";
      numButton.draw();
      b = 5;
      c = a * b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" * "+b + " = " + c, width/2, 300);
    }
  }
}
