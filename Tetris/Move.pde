public class move{
  int x,y;
  Tetromino piece;
  
  void moveLeft() {
    x -= 1;
  }
  void moveRight() {
    x += 1;
  }
  void moveDown() {
    x += 1;
  }
  void rotateClockwise() {
    
  }
  void rotateCounter() {
    
  }
  
  void dropDown() {
    x += 5;
  }
}
