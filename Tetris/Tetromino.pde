import java.util.*;
public class Tetromino{
  ArrayDeque<Character> QueuedBlocks;
  Block[][] nextBlock;
  //Block[][] holdBlock; I have no idea how hold works in tetris
  public Tetromino(){
    nextBlock = new Block[4][4];
    QueuedBlocks = new ArrayDeque<Character>();
    refill();
    getNextBlock();
  }
  void refill(){ // refill the block queue if empty
     Character[] blocks = {'I','O','T','S','L','Z','J'};
     List<Character> shuffler = Arrays.asList(blocks);
     Collections.shuffle(shuffler);
     QueuedBlocks.add(new Character('4')); 
  }
  void getNextBlock(){
    if (QueuedBlocks.size() == 1) refill();
    char currentet = QueuedBlocks.removeFirst();
    switch(currentet){
      case 'I':
        makeI();
        break;
      case 'O':
        makeO();
        break;
      case 'T':
        makeT();
        break;
      case 'S':
        makeS();
        break;
      case 'L':
        makeL();
        break;
      case 'Z':
        makeZ();
        break;
      case 'J':
        makeJ();
        break;
    }
  }
  void makeI(){
    
  }
  void makeO(){
    
  }
  void makeT(){
    
  }
  void makeS(){
    
  }
  void makeL(){
    
  }
  void makeZ(){
    
  }
  void makeJ(){
    
  }
}
