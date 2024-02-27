class ScenePlay {
  int score = 0;
  int problemType;
  int isCorrect = 0;
  float nextTimer;
  boolean testedProblem = false;
  Button testButton;
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
  // 1 = 2 Math Problem
  // 2 = If Problem 
  ScenePlay() {
    newProblem();
    threeButton = new Button((width/2)-120, 365, 75, 75, input);
    testButton = new Button(35, 100, 150, 85, "TEST");
    plusButton = new Button(350, 510, 75, 75, "+");
    minusButton = new Button(435, 510, 75, 75, "-");
    divideButton = new Button(520, 510, 75, 75, "/");
    multButton = new Button(605, 510, 75, 75, "*");
    modButton = new Button(690, 510, 75, 75, "%");
  }
  void update() {
    testButton.update();
    if (testButton.isPressed) testProblem();
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
    }
  }
  void draw() {
    background(0);
    fill(255);
    textSize(30);
    text("Score: " + score, 100, 50);
    testButton.draw();
    if (problemType == 0) {
      textSize(50);
      fill(255);
      textAlign(CENTER, CENTER);
      text("Make this statement true", width/2, 200);
      textSize(50);
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
        textSize(50);
        fill(255);
        textAlign(CENTER, CENTER);
        text("TRUE", width/2, 275);
      } else if (isCorrect == 2) {
        textSize(50);
        fill(255);
        textAlign(CENTER, CENTER);
        text("False", width/2, 275);
      }
    }
  }

  void newProblem() {
    isCorrect = 0;
    x = 0;
    problemType = round(random(0, 0));
    testedProblem = false;
    input = " ";
    if (problemType == 0) {  
      threeButton = null;
      threeButton = new Button((width/2)-120, 365, 75, 75, input);
      a = int(random(0, 50));
      b = int(random(0, 20));
      opNeeded = int(random(1, 5));
      println(opNeeded);
      if (opNeeded == 1) c = a + b;
      else if (opNeeded == 2) c = a - b;
      else if (opNeeded == 3) c = a / b;
      else if (opNeeded == 4) c = a * b;
      else c = a % b;
    } else {
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
      } else {
      }
    }
    testedProblem = true;
  }
}
