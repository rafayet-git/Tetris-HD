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
  
  int getPosX() {
    return x;
  }
  int getPosY() {
   return y; 
  }
}
