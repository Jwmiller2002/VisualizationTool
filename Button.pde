class Button {
  float x, y, w, h;
  String buttonName;

  boolean isHovered;
  boolean isPressed;

  Button(float xPos, float yPos, float buttonWidth, float buttonHeight, String name) {
    x = xPos;
    y = yPos;
    w = buttonWidth;
    h = buttonHeight;
    buttonName = name;
  }
  
  void update() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      isHovered = true;
    } else {
      isHovered = false;
    }
    if (isHovered) {
      if (leftMouseClick && !prevLeftMouseClick) {
        isPressed = true;
      }
    }
  }
  
  void draw(){
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(x,y,w,h);
  fill(0);
  textAlign(CENTER, CENTER);
  text(buttonName, x + (w/2), y + (h/2));
  }
}
