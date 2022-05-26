public class Block {
  int x, y;
  boolean isCurrent;
  color c;
  public Block(int x_, int y_, color c_) {
    isCurrent = false;
    c = c_;
    x = x_;
    y = y_;
  }

  void setColor(color newColor) {
    c = newColor;
  }
  
  //returns the col position of block
  int getPosX() {
    return x;
  }
  //retuns the row position of block
  int getPosY() {
   return y; 
  }
}
