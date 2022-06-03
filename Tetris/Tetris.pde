Grid map;
int score;
int mode;
Tetromino pieces;
boolean lose = false;
float delay = 60;
int linesRemoved = 0;
int level = 1;

final color I = color(52, 235, 222);
final color O = color(255, 247, 0);
final color T = color(255, 0, 204);
final color S = color(3, 255, 3);
final color L = color(255, 175, 3);
final color Z = color(255, 3, 53);
final color J = color(192, 3, 255);

void setup() {
  size(400, 500);
  map = new Grid();
  pieces = new Tetromino();
  map.add(pieces.nextBlock);
  pieces.getNextBlock();
  score = 0;
  delay = 60;
  map.clearPreview();
  map.makePreview();
  fill(255);
}

void draw() {
  if (!lose) {
    background(0);
    fill(255);
    text("Next", 245, 15);
    ;
    text("Score: " + score, 220, 120);
    drawGrid(map.grid, 0, 0);
    drawGrid(pieces.nextBlock, 228, 20);
    if (map.canLockIn()) {
      score+=20;
      map.clearCurrentBool();
      map.removeFullRows();
      linesRemoved += 1;
      if (map.checkLost()) lose = true;
      map.add(pieces.nextBlock);
      pieces.getNextBlock();
      map.clearPreview();
      map.makePreview();
    }
    if (linesRemoved == 10*(level+1)) {
      level += 1;
    }
    if (delay <= 0) {
      delay = 60 - level * 5;
      map.moveDown();
    }
    delay -= 1+pow(1.0009, score);
  } else {
    fill(255, 0, 0);
    text("Game Over!", 220, 135);
    text("Press Backspace to restart", 220, 150);
  }
}


void keyPressed() {
  switch (key){
    case 'a':
      map.moveLeft();
      break;
    case 'd':
      map.moveRight();
      break;
    case ' ':
      map.dropDown();
      break;
    case 'w':
      map.rotateCounter(false);
      break;
    case 'e':
      map.rotateCounter(true);
      break;
    case 's':
      map.moveDown();
      break;
    case 'p':
      pause();
      break;
    case 8:
      score = 0;
      map.clearTable();
      addBlock();
      break;
  }
}

void drawGrid(Block[][] ary, int x, int y) {
  for (int i = 0; i < ary.length; i++) {
    for (int j = 0; j<ary[0].length; j++) {
      if (ary[i][j] == null) {
        if (i<4 && ary.length > 4) {
          fill(#dd7e75, 150);
        } else {
          fill(0);
        }
      } else if (!ary[i][j].isPreview) {
        fill(ary[i][j].c);
      } else {
        color a = ary[i][j].c;
        fill(color(red(a), green(a), blue(a), 150));
      }
      strokeWeight(2);
      rect(j*map.size+x, i*map.size+y, map.size, map.size);
      stroke(150);
    }
  }
}

void addBlock() {
  map.add(pieces.nextBlock);
  pieces.getNextBlock();
  map.clearPreview();
  map.makePreview();
}
