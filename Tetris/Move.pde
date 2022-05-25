public class move{
  Tetomino piece;
  int x,y;
  Block b;
  
  void moveLeft() {
    if (piece.getPos() > 0) {
      x -= 1;
    }
  }
  void moveRight() {
    if (piece.getPos() < 10) {
      x += 1;
    }
  }
  void moveDown() {
    if (!map.canLockIn()) {
      y += 1;
    }
  }
  void rotateClockwise() {
    
  }
  void rotateCounter() {
    rotate(-PI/2.0);
  }
  
  void dropDown() {
    y += 5;
  }
}
