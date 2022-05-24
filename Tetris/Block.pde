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
 
 // what is this supposed to do? do we implement this into grid functions?
 void remove () {
     noStroke();
     fill(255);
     rect(this.x, this.y,10,10);
 }
}
