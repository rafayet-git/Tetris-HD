
public class move{
  Tetromino piece;
  Block b;
  
  void moveLeft() {
    if (piece.getPos() > 0) {
      piece.posX -= 1;
    }
  }
  void moveRight() {
    if (piece.getPos() < 10) {
      piece.posX += 1;
    }
  }
  void moveDown() {
    if (!map.canLockIn()) {
      piece.posY += 1;
    }
  }
  void rotateClockwise() {
    
  }
  void rotateCounter() {
    rotate(-PI/2.0);
  }
  
  void dropDown() {
    piece.posY += 5;
  }
}
