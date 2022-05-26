
public class move{
  Tetromino piece;
  Block b;
  
  void moveLeft() {
    if (b.getPosX() > 0) {
      b.x -= 1;
    }
  }
  void moveRight() {
    if (b.getPosX() < 10) {
      b.x += 1;
    }
  }
  //void moveDown() {
  //  if (!map.canLockIn()) {
  //    b.y += 1;
  //  }
  //}
  void rotateClockwise() {
    
  }
  void rotateCounter() {
  }
  //blocks drop down at a faster rate
  void dropDown() {
    b.y += 3;
  }
}
