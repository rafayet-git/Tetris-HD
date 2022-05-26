import java.util.*;
public class Tetromino{
  ArrayDeque<Character> QueuedBlocks;
  int[][] currentBlockxy;
  Block[][] nextBlock;
  //Block[][] holdBlock; I have no idea how hold works in tetris
  public Tetromino(){
    nextBlock = new Block[4][4];
    currentBlockxy = new int[4][2];
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
    for(Block[] temp : nextBlock){
      Arrays.fill(temp, null);
    }
    if (QueuedBlocks.size() >= 1) refill();
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
    nextBlock[3][0] = new Block(color(52,235,222));
    nextBlock[2][0] = new Block(color(52,235,222));
    nextBlock[1][0] = new Block(color(52,235,222));
    nextBlock[0][0] = new Block(color(52,235,222));
  }
  void makeO(){
    nextBlock[3][0] = new Block(color(255,247,0));
    nextBlock[3][1] = new Block(color(255,247,0));
    nextBlock[2][0] = new Block(color(255,247,0));
    nextBlock[2][1] = new Block(color(255,247,0));
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
