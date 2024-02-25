class ScenePlay {
  int score = 0;
  int problemType;
  // 0 = 3 Math Problem
   float a;
   float b;
   float c;
  // 1 = 2 Math Problem
  // 2 = If Problem 
  ScenePlay() {
    newProblem();
    print(problemType);
  }
  void update() {
  }
  void draw() {
    background(0);
    fill(255);
    textSize(30);
    text("Score: " + score, 100, 50);
  }

  void newProblem() {
    problemType = int(random(-1, 3));
    if (problemType == 0) {      
      a = int(random(0,100));
      b = int(random(0,100));
      int opNeeded = int(random(0,6));
      if (opNeeded == 1) c = a + b;
      else if (opNeeded == 2) c = a - b;
      else if (opNeeded == 3) c = a / b;
      else if (opNeeded == 4) c = a * b;
      else if (opNeeded == 5) c = a % b;
      //
    } else if (problemType == 1) {
    } else {
    }
  }
}
