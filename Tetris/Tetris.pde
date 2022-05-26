Grid map;
int score;
int mode;
Tetromino pieces;
boolean lose = false;
boolean notLose = false;
int delay;

void setup() {
  size(400,400);
  map = new Grid();
  pieces = new Tetromino();
  map.add(pieces.nextBlock);
  pieces.getNextBlock();
}

void draw() {
  background(255);
  //if (map != null) {
      drawGrid(map.grid, 0, 0);
      drawGrid(pieces.nextBlock, 220, 0);
  //  if (notLose) {
  //    if (delay == 0) {
  //      //piece.moveDown();
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
  map.add(pieces.nextBlock);
  pieces.getNextBlock(); 
  //if (key == 'a') {
  //  piece.moveLeft();
  //}
  //if (key == 'd') {
  //  piece.moveRight();
  //}
  //if (key == ' ') {
  //  piece.dropDown();
  //}
  //if (key == 'w') {
  //  piece.rotateCounter();
  //}
  //if (key == 's') {
  //  piece.rotateClockwise();
  //}
  //if (key == 'p') {
  //  piece.pause();
  //}
}

void drawGrid(Block[][] ary, int x, int y){
  for(int i = 0; i < ary.length;i++){
   for(int j = 0; j<ary[0].length;j++){
    if (ary[i][j] == null){
      if (i<4){
        fill(184, 73, 81);
      } else {fill(150);}
    } else {fill(ary[i][j].c);}
    rect(j*map.size+x,i*map.size+y,map.size,map.size,5);
   }
  }
}
