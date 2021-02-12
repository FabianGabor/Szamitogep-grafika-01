// Futásidő alatt minden második egérkattintásra jelenjen meg az a téglalap, 
// mely oldalai párhuzamosak a grafikus ablak oldalaival, 
// átlója végpontjait az aktuális, illetve a megelőző kattintás pontjai adják!
// Futásidő alatt parkettázza az előző feladatban leírt módon megadott téglalappal a grafikus ablakot!

int count;
int prevMouseX, prevMouseY;

void setup() {
  size(640, 480);
}

void draw() {
}

void drawRect(int x1, int y1, int x2, int y2) {
  for (int i = (x1>x2?x2:x1); i < (x1>x2?x1:x2); i++) {
    point(i, y1);
    point(i, y2);
  }   
  for (int i = (y1>y2?y2:y1); i < (y1>y2?y1:y2); i++) { 
    point(x1, i);
    point(x2, i);
  }   
}

void parquet(int x1, int y1, int x2, int y2) {
  drawRect(x1, y1, x2, y2);
  int countX = width / abs(x1-x2);
  println(countX);
}

void mousePressed() {
  count++;

  if (count % 2 == 0) {
    parquet(mouseX, mouseY, prevMouseX, prevMouseY);
  }

  prevMouseX = mouseX;
  prevMouseY = mouseY;
}
