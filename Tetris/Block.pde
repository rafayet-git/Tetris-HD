public class Block {
 static float x,y;
 static color c;
 
 public Block(float x_, float y_, color c_) {
   x = x_;
   y = y_;
   c = c_;
   fill(c);
   rect (x,y,10,10);
 }
 
 void setColor(color newColor){
   c = newColor;
 }
 
 void remove (int X, int Y) {
   
 }
}
