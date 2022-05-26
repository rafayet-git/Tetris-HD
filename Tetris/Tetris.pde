Grid map;
int score;
int mode;
Tetromino pieces;
boolean lose = false;
boolean notLose = false;
int delay;

void setup() {
  size(200,400);
  map = new Grid();
  pieces = new Tetromino();
  map.add(pieces.nextBlock);
  pieces.getNextBlock();
}

void draw() {
  background(255);
  //if (map != null) {
      drawGrid(map.grid);
  //  if (notLose) {
  //    if (delay == 0) {
          //pieces.moveDown();
  //      delay += 60;
  //    }
  //    if (delay > 0) {
  //      delay--;
  //    }
  //  }
  //}
  //if (lose) {
  //  noStroke();
  //  fill(255);
  //  rect(100,100, 100, 20);
  //  text("Game Over!", 105,105);
  }


void keyPressed() { // use switch statement lol
  if (key == 'a') {
    pieces.moveLeft();
  }
  //if (key == 'd') {
  //  pieces.moveRight();
  //}
  //if (key == ' ') {
  //  pieces.dropDown();
  //}
  //if (key == 'w') {
  //  pieces.rotateCounter();
  //}
  //if (key == 's') {
  //  pieces.rotateClockwise();
  //}
  //if (key == 'p') {
      //pause();
  //}
}

void drawGrid(Block[][] ary){
  for(int i = 0; i < ary.length;i++){
   for(int j = 0; j<ary[0].length;j++){
    if (ary[i][j] == null){
      if (i<4){
        fill(184, 73, 81);
      } else {fill(150);}
    } else {fill(ary[i][j].c);}
    rect(j*map.size,i*map.size,map.size,map.size,5);
   }
  }
}

void moveLeft() {
    if (x-1>0) {
      x -= 1;
    }
  }
  void moveRight() {
    if (x<10) {
      x += 1;
    }
  }
  void moveDown() {
    y += 1;
  }
  void dropDown() {
    y += 3;
  }
