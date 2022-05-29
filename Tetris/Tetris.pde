Grid map;
int score;
int mode;
Tetromino pieces;
boolean lose = false;
float delay;

void setup() {
  size(400,500);
  map = new Grid();
  pieces = new Tetromino();
  map.add(pieces.nextBlock);
  pieces.getNextBlock();
  score = 0;
  delay = 60;
  map.clearPreview();
  map.makePreview();
}

void draw() {
  if (!lose){
    background(255);
    fill(0);
    text("Score: " + score, 220, 100);
    drawGrid(map.grid, 0, 0);
    drawGrid(pieces.nextBlock, 220, 0);
    if (map.canLockIn()){
      score+=20;
      map.clearCurrent();
      map.removeFullRows();
      if (map.checkLost()) lose = true;
      map.add(pieces.nextBlock);
      pieces.getNextBlock();
    }
    if(delay <= 0){
      delay = 60 -  (pow(1.0009,score));
      map.moveDown();
    }
    delay--;
  } else {
    fill(255,0,0);
    text("Game Over!", 220,115);
    text("Press Backspace to restart", 220,125);
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
    //case ' ':
    //  map.dropDown();
    //  break;
    case 'w':
      map.rotateCounter();
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
      map.add(pieces.nextBlock);
      pieces.getNextBlock();
      lose = false;
      break;
  }
}

void drawGrid(Block[][] ary, int x, int y){
  for(int i = 0; i < ary.length;i++){
   for(int j = 0; j<ary[0].length;j++){
    if (ary[i][j] == null){
      if (i<4){
        fill(#dd7e75);
      } else {fill(150);}
    } else if (!ary[i][j].isPreview){
        fill(ary[i][j].c);
    } else{
        fill(150);
        stroke(ary[i][j].c);
        strokeWeight(3);
    }
    rect(j*map.size+x,i*map.size+y,map.size,map.size,5);
    strokeWeight(1);
    stroke(0);
   }
  }
}
