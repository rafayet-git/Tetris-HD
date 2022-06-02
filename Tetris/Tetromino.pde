import java.util.*;
public class Tetromino{
  ArrayDeque<Character> QueuedBlocks;
  Block[][] nextBlock;
  color holdBlock;
  
  public Tetromino(){
    nextBlock = new Block[4][3];
    QueuedBlocks = new ArrayDeque<Character>();
    refill();
    getNextBlock(false);
  }
  
  void holdBlock() {
    holdBlock = 
  }
  
  void refill(){ // refill the block queue if empty
     Character[] blocks = {'I','O','T','S','L','Z','J'};
     List<Character> shuffler = Arrays.asList(blocks);
     Collections.shuffle(shuffler);
     for(int i = 0; i < shuffler.size();i++){
       QueuedBlocks.add(shuffler.get(i));  
     }
  }
  void getNextBlock(boolean keepBlock){ // do grid.add before this
    for(Block[] temp : nextBlock){
      Arrays.fill(temp, null);
    }
    if (QueuedBlocks.size() <= 4) refill();
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
    nextBlock[3][0] = new Block(I);
    nextBlock[2][0] = new Block(I);
    nextBlock[1][0] = new Block(I);
    nextBlock[0][0] = new Block(I);
  }
  void makeO(){
    nextBlock[3][0] = new Block(O);
    nextBlock[3][1] = new Block(O);
    nextBlock[2][0] = new Block(O);
    nextBlock[2][1] = new Block(O);
  }
  void makeT(){
    nextBlock[3][0] = new Block(T);
    nextBlock[3][1] = new Block(T);
    nextBlock[3][2] = new Block(T);
    nextBlock[2][1] = new Block(T);
  }
  void makeS(){
    nextBlock[3][0] = new Block(S);
    nextBlock[3][1] = new Block(S);
    nextBlock[2][1] = new Block(S);
    nextBlock[2][2] = new Block(S);
  }
  void makeL(){
    nextBlock[3][0] = new Block(L);
    nextBlock[3][1] = new Block(L);
    nextBlock[3][2] = new Block(L);
    nextBlock[2][2] = new Block(L);
  }
  void makeZ(){
    nextBlock[2][0] = new Block(Z);
    nextBlock[2][1] = new Block(Z);
    nextBlock[3][1] = new Block(Z);
    nextBlock[3][2] = new Block(Z);
  }
  void makeJ(){
    nextBlock[2][0] = new Block(J);
    nextBlock[3][0] = new Block(J);
    nextBlock[3][1] = new Block(J);
    nextBlock[3][2] = new Block(J);
  }
  //Block[][] genNextBlocks(){
    
  //}
}
