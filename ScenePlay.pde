class ScenePlay {
  int score = 0;
  int problemType;
  int isCorrect = 0;
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
  boolean threePressed = false;
  String input = " ";
  // 1 = 2 Math Problem
  // 2 = If Problem 
  ScenePlay() {
    newProblem();
    threeButton = new Button((width/2)-120, 365, 75, 75, input);
    testButton = new Button(35, 100, 150, 85, "TEST");
    print(problemType);
  }
  void update() {
    testButton.update();
    if (testButton.isPressed) testProblem();
    if (problemType == 0) {
      threeButton.update();
      if (threeButton.isPressed) threePressed = true;
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
      threeButton.draw();
      text(" = " + c, (width/2)+100, 400);
      if (threePressed) {
        stroke(255);
        strokeWeight(3);
        fill(0);
        rect(width/2 - 300, 475, 500, 150, 3);
      }
      if (isCorrect == 1) {
        textSize(50);
        fill(255);
        textAlign(CENTER, CENTER);
        text("TRUE", width/2, 275);
      }
      else if (isCorrect == 2){
              textSize(50);
        fill(255);
        textAlign(CENTER, CENTER);
        text("False", width/2, 275);
      }
    }
  }

  void newProblem() {
    isCorrect = 0;
    problemType = int(random(-1, 1));
    if (problemType == 0) {      
      a = int(random(0, 50));
      b = int(random(0, 20));
      opNeeded = int(random(0, 6));
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
    if (problemType == 1) {
      if (x == opNeeded) { 
        isCorrect =1;
      }
    } else {
      isCorrect = 2;
    }
  }
}
