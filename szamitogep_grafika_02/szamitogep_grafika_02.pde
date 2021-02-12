// Futásidő alatt minden második egérkattintásra jelenjenek meg az aktuális, 
// illetve a megelőző kattintás pontjaira illeszkedő, ablak oldalaival párhuzamos egyenespárok!

int count;
int prevMouseX, prevMouseY;

void setup() {
  size(640, 480);
}

void draw() {
}

void drawLine(int x, int y) {
  for (int i = 0; i < width; i++) point(i, y);
  for (int i = 0; i < width; i++) point(x, i);
}

void mousePressed() {
  count++;

  if (count % 2 == 0) {
    drawLine(mouseX, mouseY);
    drawLine(prevMouseX, prevMouseY);
  }

  prevMouseX = mouseX;
  prevMouseY = mouseY;
}
