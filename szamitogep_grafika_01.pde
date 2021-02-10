void setup() {
  size(640,480);
}
void draw() {
  if (mousePressed == true) {
    for (int i = 0; i < width; i++) {
      point(i, mouseY);
    }
    for (int j = 0; j < height; j++) {
      point(mouseX, j);
    }    
  }
}
void mousePressed() {
  //draw();
}
void mouseClicked() {
  //draw();
}
