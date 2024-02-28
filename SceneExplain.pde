class SceneExplain {
  String explain;
  String input = " ";
  String title = " ";
  float a = 0;
  float b;
  float c;
  float numY = 275;
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
    numButton = new Button(550, numY, 75, 75, input);
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
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (oneButton.isPressed) {
        numIsPressed = false;
        a = 1;
        input = "1";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (twoButton.isPressed) {
        numIsPressed = false;
        a = 2;
        input = "2";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (threeButton.isPressed) {
        numIsPressed = false;
        a = 3;
        input = "3";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (fourButton.isPressed) {
        numIsPressed = false;
        a = 4;
        input = "4";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (fiveButton.isPressed) {
        numIsPressed = false;
        a = 5;
        input = "5";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (sixButton.isPressed) {
        numIsPressed = false;
        a = 6;
        input = "6";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (sevenButton.isPressed) {
        numIsPressed = false;
        a = 7;
        input = "7";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1;
        if (explain == "decre") c = a - 1;
      }
      if (eightButton.isPressed) {
        numIsPressed = false;
        a = 8;
        input = "8";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a+1 ;
        if (explain == "decre") c = a - 1;
      }
      if (nineButton.isPressed) {
        numIsPressed = false;
        a = 9;
        input = "9";
        numButton = null;
        numButton = new Button(550, numY, 75, 75, input);
        if (explain == "incre") c = a + 1;
        if (explain == "decre") c = a - 1;
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
      numY = 275;
      numButton = null;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 5;
      c = a + b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" + "+b + " = " + c, width/2, 300);
    } else if (explain == "minus") {
      title = "MINUS";
      numY = 275;
      numButton = null;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 5;
      c = a - b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" - "+b + " = " + c, width/2, 300);
    } else if (explain == "divide") {
      title = "DIVIDE";    
      numY = 275;
      numButton = null;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 3;
      c = a / b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" / "+b + " = " + c, width/2, 300);
    } else if (explain == "mult") {
      title = "MULTIPLY";
      numY = 275;
      numButton = null;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 5;
      c = a * b;
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" * "+b + " = " + c, width/2, 300);
    } else if (explain == "incre") {
      title = "INCREMENT";
      numY = 275;
      numButton = null;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" ++ = " + c, width/2, 300);
    } else if (explain == "decre") {
      title = "DECREMENT";
      numY = 275;
      numButton = null;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      fill(255);
      textAlign(LEFT, CENTER);
      textSize(50);
      text(" -- = " + c, width/2, 300);
    } else if (explain == "addAsign") {
      title = "ADD ASSIGN";
      numButton = null;
      numY = 125;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 5;
      c = a + b;
      fill(255);
      textSize(50);
      textAlign(RIGHT, CENTER);
      text ("float a = ", (width/2) - 100, 150);
      text("a += " + b + ";", width/2, 230);
      text("a = " + c + ";", width/2, 305);
    } else if (explain == "subAsign") {
      title = "SUBTRACT ASSIGN";
      numButton = null;
      numY = 125;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 5;
      c = a - b;
      fill(255);
      textSize(50);
      textAlign(RIGHT, CENTER);
      text ("float a = ", (width/2) - 100, 150);
      text("a -= " + b + ";", width/2, 230);
      text("a = " + c + ";", width/2, 305);
    } else if (explain == "divideAsign") {
      title = "DIVIDE ASSIGN";
      numButton = null;
      numY = 125;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 3;
      c = a / b;
      fill(255);
      textSize(50);
      textAlign(RIGHT, CENTER);
      text ("float a = ", (width/2) - 100, 150);
      text("a /= " + b + ";", width/2, 230);
      text("a = " + c + ";", width/2, 305);
    } else if (explain == "multAsign") {
      title = "MULTIPLY ASSIGN";
      numButton = null;
      numY = 125;
      numButton = new Button(550, numY, 75, 75, input);
      numButton.draw();
      b = 3;
      c = a / b;
      fill(255);
      textSize(50);
      textAlign(RIGHT, CENTER);
      text ("float a = ", (width/2) - 100, 150);
      text("a /= " + b + ";", width/2, 230);
      text("a = " + c + ";", width/2, 305);
    } else {
      delay(100);
      switchToLearn(prevScene);
    }
  }
}
