class ScenePlay {
  int score = 0;
  int problemType;
  int isCorrect = 0;
  float nextTimer;
  boolean testedProblem = false;
  Button testButton;
  Button learnButton;
  // 0 = 3 Math Problem
  float a;
  float b;
  float c;
  float x;
  int opNeeded;
  Button threeButton;
  Button plusButton;
  Button minusButton;
  Button divideButton;
  Button multButton;
  Button modButton;
  boolean threePressed = false;
  String input = " ";
  // 1 = If Problem 
  int equalNeeded;
  int numAmount;
  boolean ifPressed = false;
  Button ifButton;
  Button equalButton;
  Button lessButton;
  Button greatButton;
  Button lessEqualButton;
  Button greatEqualButton;

  ScenePlay() {
    newProblem();
    testButton = new Button(35, 100, 150, 85, "TEST");
    learnButton = new Button(1075, 100, 150, 85, "LEARN");
    //MATH PROBLEMS
    threeButton = new Button((width/2)-120, 365, 75, 75, input);
    plusButton = new Button(350, 510, 75, 75, "+");
    minusButton = new Button(435, 510, 75, 75, "-");
    divideButton = new Button(520, 510, 75, 75, "/");
    multButton = new Button(605, 510, 75, 75, "*");
    modButton = new Button(690, 510, 75, 75, "%");
    //IF
    ifButton = new Button((width/2)-120, 315, 75, 75, input);
    equalButton = new Button(455, 460, 75, 75, "==");
    lessButton = new Button(545, 460, 75, 75, "<");
    greatButton = new Button(635, 460, 75, 75, ">");
    lessEqualButton = new Button(725, 460, 75, 75, "<=");
    greatEqualButton = new Button(815, 460, 75, 75, ">=");
  }
  void update() {
    testButton.update();
    learnButton.update();
    if (testButton.isPressed) testProblem();
    if (learnButton.isPressed) switchToLearn("Game");
    if (testedProblem) {
      nextTimer -= dt;
      if (nextTimer <= 0) newProblem();
    }
    if (problemType == 0) {
      threeButton.update();
      if (threeButton.isPressed) threePressed = true;
      if (threePressed) {
        plusButton.update();
        minusButton.update();
        divideButton.update();
        multButton.update();
        modButton.update();
        if (plusButton.isPressed) {
          threePressed = false;
          input = "+";
          x = 1;
          threeButton = null;
          threeButton = new Button((width/2)-120, 365, 75, 75, input);
        }
        if (minusButton.isPressed) {
          threePressed = false;
          input = "-";
          x = 2;
          threeButton = null;
          threeButton = new Button((width/2)-120, 365, 75, 75, input);
        }
        if (divideButton.isPressed) {
          threePressed = false;
          input = "/";
          x = 3;
          threeButton = null;
          threeButton = new Button((width/2)-120, 365, 75, 75, input);
        }
        if (multButton.isPressed) {
          threePressed = false;
          input = "*";
          x = 4;
          threeButton = null;
          threeButton = new Button((width/2)-120, 365, 75, 75, input);
        }
        if (modButton.isPressed) {
          threePressed = false;
          input = "%";
          x = 5;
          threeButton = null;
          threeButton = new Button((width/2)-120, 365, 75, 75, input);
        }
      }
    } else {
      ifButton.update();
      if (ifButton.isPressed) ifPressed = true;
      if (ifPressed == true) {
        equalButton.update();
        lessButton.update();
        greatButton.update();
        lessEqualButton.update();
        greatEqualButton.update();
        if (equalButton.isPressed) {
          input = "==";
          x = 1;
          ifPressed = false;
          ifButton = null;
          ifButton = new Button((width/2)-120, 315, 75, 75, input);
        }
        if (lessButton.isPressed) {
          input = "<";
          x = 2;
          ifPressed = false;
          ifButton = null;
          ifButton = new Button((width/2)-120, 315, 75, 75, input);
        }
        if (greatButton.isPressed) {
          input = ">";
          x = 3;
          ifPressed = false;
          ifButton = null;
          ifButton = new Button((width/2)-120, 315, 75, 75, input);
        }
        if (lessEqualButton.isPressed) {
          input = "<=";
          x = 4;
          ifPressed = false;
          ifButton = null;
          ifButton = new Button((width/2)-120, 315, 75, 75, input);
        }
        if (greatEqualButton.isPressed) {
          input = ">=";
          x = 5;
          ifPressed = false;
          ifButton = null;
          ifButton = new Button((width/2)-120, 315, 75, 75, input);
        }
      }
    }
  }
  void draw() {
    background(0);
    fill(255);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Score: " + score, 100, 50);
    testButton.draw();
    learnButton.draw();
    if (problemType == 0) {
      textSize(45);
      fill(255);
      textAlign(CENTER, CENTER);
      text("Make this statement true", width/2, 100);
      textSize(45);
      fill(255);
      textAlign(CENTER, CENTER);
      text(round(a), (width/2)-180, 400);
      text(round(b), width/2, 400);
      textAlign(LEFT, CENTER);
      text(" = " + c, (width/2) + 15, 400);
      threeButton.draw();

      if (threePressed) {
        stroke(255);
        strokeWeight(3);
        fill(0);
        rect(width/2 - 300, 475, 435, 150, 3);
        plusButton.draw();
        minusButton.draw();
        divideButton.draw();
        multButton.draw();
        modButton.draw();
      }
      if (isCorrect == 1) {
        textSize(45);
        fill(255);
        textAlign(CENTER, CENTER);
        text("TRUE", width/2, 275);
      } else if (isCorrect == 2) {
        textSize(45);
        fill(255);
        textAlign(CENTER, CENTER);
        text("False", width/2, 275);
      }
    } else {
      ifButton.draw();
      textSize(45);
      fill(255);
      textAlign(CENTER, CENTER);
      text("Make this statement print ''Hello World''", width/2, 100);
      text("float a = " + a, width/2, 200);
      text("float b = " + b, width/2, 250);
      text("If (a ", (width/2)-180, 350 );
      textAlign(LEFT, CENTER);
      text(" b){ println(''Hello World'') }", (width/2)- 40, 350);
      if (ifPressed) {
        stroke(255);
        strokeWeight(3);
        fill(0);
        rect(width/2 - 200, 425, 465, 150, 3);
        equalButton.draw();
        lessButton.draw();
        greatButton.draw();
        lessEqualButton.draw();
        greatEqualButton.draw();
      }
      if (isCorrect == 1) {
        ifPressed = false;
        textSize(45);
        fill(255);
        textAlign(CENTER, CENTER);
        text("Hello World", width/2, 500);
      } else if (isCorrect == 2) {
        ifPressed = false;
        textSize(45);
        fill(255);
        textAlign(CENTER, CENTER);
        text("Null", width/2, 500);
      }
    }
  }

  void newProblem() {
    isCorrect = 0;
    x = 0;
    problemType = round(random(0, 2));
    testedProblem = false;
    input = " ";
    if (problemType == 0) {  
      threeButton = null;
      threeButton = new Button((width/2)-120, 365, 75, 75, input);
      a = int(random(1, 50));
      b = int(random(1, 20));
      opNeeded = int(random(1, 6));
      println(opNeeded);
      if (opNeeded == 1) c = a + b;
      else if (opNeeded == 2) c = a - b;
      else if (opNeeded == 3) c = a / b;
      else if (opNeeded == 4) c = a * b;
      else c = a % b;
    } else {
      ifButton = null;
      ifButton = new Button((width/2)-120, 315, 75, 75, input);
      a = int(random(1, 50));
      b = int(random(1, 50));
    }
  }

  void testProblem() {
    nextTimer = 2;
    if (problemType == 0) {
      if (!testedProblem) {
        if (x == opNeeded) { 
          isCorrect = 1;
          score += 10;
        } else {
          isCorrect = 2;
          score -= 10;
        }
      }
    } else {
      if (!testedProblem) {
        if (x == 1) {
          if (a == b) {
            isCorrect = 1;
            score += 15;
          } else {
            isCorrect = 2;
            score -= 15;
          }
        } else if (x == 2) {
          if (a < b) {
            isCorrect = 1;
            score += 15;
          } else {
            isCorrect = 2;
            score -= 15;
          }
        } else if (x == 3) {
          if (a > b) {
            isCorrect = 1;
            score += 15;
          } else {
            isCorrect = 2;
            score -= 15;
          }
        } else if (x == 4) {
          if (a <= b) {
            isCorrect = 1;
            score += 15;
          } else {
            isCorrect = 2;
            score -= 15;
          }
        } else if (x == 5) {
          if (a >= b) {
            isCorrect = 1;
            score += 15;
          } else {
            isCorrect = 2;
            score -= 15;
          }
        } else {
          isCorrect = 2;
          score -= 15;
        }
      }
    }
    testedProblem = true;
  }
}
