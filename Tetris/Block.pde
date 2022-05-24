public class Block {
 float x,y;
 color c;
 
 public Block(float x_, float y_) {
   this(x_,y_, color(0));
 }
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
 
 void remove (Block b) {
   if (b != null) {
     noStroke();
     fill(255);
     rect(b.x, b.y,10,10);
   }
 }
}
