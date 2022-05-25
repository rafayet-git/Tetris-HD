Grid map;
int score;
int mode;
Tetromino piece;
Tetromino nextPiece;
boolean lose = false;
boolean notLose = false;
int delay;

void setup() {
  size(300,500);
}

void draw() {
  background(255);
  if (map != null) {
    map.drawGrid();
    if (notLose) {
      if (delay == 0) {
        piece.moveDown();
        delay += 60;
      }
      if (delay > 0) {
        delay--;
      }
    }
  }
  if (lose) {
    noStroke();
    fill(255);
    rect(100,100, 100, 20);
    text("Game Over!", 105,105);
  }
}

void keyPressed() {
  
}
