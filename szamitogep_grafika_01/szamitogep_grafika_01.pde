void setup() {
  size(640,480);
}
void draw() {
}
void mousePressed() {
  for (int i = 0; i < width; i++) {
    point(i, mouseY);
  }
  for (int i = 0; i < height; i++) {
    point(mouseX, i);
  }
}
