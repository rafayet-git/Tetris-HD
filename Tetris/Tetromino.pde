import java.util.*;
public class Tetromino{
  ArrayDeque<Character> QueuedBlocks;
  ArrayList<int[]> currentBlock;
  Block[][] nextBlock;
  //Block[][] holdBlock; I have no idea how hold works in tetris
  public Tetromino(){
    nextBlock = new Block[4][4];
    refill();
    getNextBlock();
  }
  void refill(){
     Character[] blocks = {'I','O','T','S','L','Z','J'};
     List<Character> shuffler = Arrays.asList(blocks);
     Collections.shuffle(shuffler);
     while (shuffler.size()>0){
        QueuedBlocks.addLast(shuffler.remove(0)); 
     }
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
