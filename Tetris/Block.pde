public class Block {
  boolean isCurrent;
  boolean isPreview;
  color c;
  public Block(color c_){
   isCurrent = false;
   isPreview = false;
   c = c_;
  }
  public Block(color c_, boolean isCur_){
   isCurrent = isCur_;
   isPreview = false;
   c = c_;
  }
}
