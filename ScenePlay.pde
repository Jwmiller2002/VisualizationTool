class ScenePlay {
  int score = 0;
  int a;
  int b;
  int c;

  ScenePlay() {
    newProblem();
    print(a);
  }
  void update() {
    
  }
  void draw() {
    background(0);
    fill(255);
    textSize(30);
    text("Score: " + score,100,50);
  }
  
  void newProblem(){
  a = int(random(-100,100));
  b = int(random(-100,100));
  c = int(random(-100,100));
  }
}
