public class move{
  int x,y;
  int[][] coord = new int[2][4];
  
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
    rotate(-PI/2.0);
  }
  
  void dropDown() {
    x += 5;
  }
}
