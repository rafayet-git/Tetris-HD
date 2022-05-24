public class Block {
 static float x,y;
 static color c;
 
 public Block() {
   fill(c);
   rect(x,y,1,1);
 }
 
 void setColor(color newColor){
   c = newColor;
 }
 
}
