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
    isPressed = false;
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

  void draw() {
    if (!isHovered) fill(0);
    else fill(50);
    stroke(255);
    strokeWeight(3);
    rect(x, y, w, h, 3);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(40);
    text(buttonName, x + (w/2), y + (h/2));
  }
}
