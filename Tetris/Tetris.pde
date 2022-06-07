Grid map;
int score;
int mode = 0;
Tetromino pieces;
boolean lose = false;
boolean paused;
float delay = 60;
int linesRemoved = 0;
int level = 1;
boolean toBePressed;


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
  toBePressed = false;
  paused = false;
  map.makePreview();
  fill(255);
}

void draw() {
  if (mode == 0) {
    drawMain();
  }
  if (mode == 1) {
    playClassic();
  }
}
void playClassic() {
  if (!lose && !paused) {
    background(0);
    fill(255);
    textSize(15);
    text("Next", 245, 15);
    text("Hold", 335, 15);
    text("Level: " + level, 220, 135);
    text("Lines: " + linesRemoved, 300, 135);
    text("Score: " + score, 220, 120);
    drawGrid(map.grid, 0, 0);
    drawGrid(pieces.nextBlock, 228, 20);
    drawGrid(pieces.holdBlock, 320, 20);
    if (map.canLockIn()) {
      toBePressed = true;

    }else{
     toBePressed = false; 
    }
    if (linesRemoved == 10*(level)) {
      level += 1;
    }
    if (delay <= 0) {
      delay = 60 - ((level-1) * 2);
      if (!toBePressed){
        map.moveDown();
      }else{
        score+=20;
        map.clearCurrentBool();
        map.removeFullRows();
        if (map.checkLost()) lose = true;
        map.add(pieces.nextBlock);
        pieces.getNextBlock();
        map.makePreview();
        pieces.canHold = true;
      }
    }
    delay -= 1+pow(1.00009, score);
  } else if (paused){
    fill(255, 255, 0);
    text("Paused", 320, 120);
  }else {
    fill(255, 0, 0);
    text("Game Over!", 220, 155);
    text("Press Backspace to restart", 220, 170);
  }
}
void mouseClicked() {
  if (mouseX>125 && mouseX<275 && mouseY>200 && mouseY<240) {
    mode=1;
  }
}
void keyPressed() {
  if (mode != 0)
  switch (key){
    case 'a':
      map.moveLeft();
      break;
    case 'd':
      map.moveRight();
      break;
    case ' ':
      if (!toBePressed)map.dropDown();
      delay = 0;
      break;
    case 'w':
      map.rotateCounter(false);
      break;
    case 'e':
      map.rotateCounter(true);
      break;
    case 's':
      if (!toBePressed) delay = 60 - ((level-1) * 2);
      map.moveDown();
      break;
    case 'q':
      holdBlock();
      break;
    case 'p':
      pause();
      break;
    case 8:
      score = 0;
      level = 0;
      linesRemoved = 0;
      map.clearTable();
      addBlock();
      lose = false;
      pieces.canHold = true;
      pieces.hasHold = false;
      pieces.clearHold();
      break;
  }
}
int ticker = 15;
boolean t = true;
void drawGrid(Block[][] ary, int x, int y) {
  for (int i = 0; i < ary.length; i++) {
    for (int j = 0; j<ary[0].length; j++) {
      if (ary[i][j] == null) {
        if (i<4 && ary.length > 4) {
          fill(#dd7e75, 150);
        } else {
          fill(0);
        }
      } else if (!ary[i][j].isPreview ) {
        if(toBePressed && ary[i][j].isCurrent){
          if (t){fill(ary[i][j].c);} else{
            color a = ary[i][j].c;
            fill(color(red(a), green(a), blue(a), 100));
          }
        } else{
           fill(ary[i][j].c);          
        }
      } else {
        color a = ary[i][j].c;
        fill(color(red(a), green(a), blue(a), 140));
      }
      strokeWeight(2);
      rect((j*map.size)+x, i*map.size+y, map.size, map.size);
      stroke(150);
    }
    y++;
  }
  if (ticker <= 0){
    ticker = 15;
    if (t){
      t = false;
    }else {t = true;}
  }else {ticker--;}
}

void addBlock() {
  map.add(pieces.nextBlock);
  pieces.getNextBlock();
  map.makePreview();
}

void pause(){
  if (paused){
     paused = false; 
  } else{
   paused = true; 
  }
}

void holdBlock(){
  if (pieces.canHold){
    color temp = map.getColor();
    if (pieces.hasHold){
      map.removeCurrentBlocks();
      map.add(pieces.holdBlock);
      pieces.holdBlock = makeBlock(temp);
      pieces.canHold = false;
    }else{
      map.removeCurrentBlocks();
      pieces.holdBlock = makeBlock(temp);
      map.add(pieces.nextBlock);
      pieces.getNextBlock();
      pieces.canHold = false;
      pieces.hasHold = true;
    }
    map.makePreview();
  }
}
void drawMain(){
  background(0);
  textSize(50);
  fill(255);
  text("Tetris", 125, 100);
  fill(200, 60, 30);
  rect(125, 200, 150, 40);
  textSize(30);
  fill(0);
  text("Classic", 150, 230);
}
