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
     for(int i = 0; i < shuffler.size();i++){
       QueuedBlocks.add(shuffler.get(i));  
     }
  }
  void getNextBlock(){ // do grid.add before this
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
    nextBlock[3][0] = new Block(3,0,color(52,235,222));
    nextBlock[3][1] = new Block(3,1,color(52,235,222));
    nextBlock[3][2] = new Block(3,2,color(52,235,222));
    nextBlock[3][3] = new Block(3,3,color(52,235,222));
  }
  void makeO(){
    nextBlock[3][1] = new Block(3,1,color(255,247,0));
    nextBlock[3][2] = new Block(3,2,color(255,247,0));
    nextBlock[2][1] = new Block(2,1,color(255,247,0));
    nextBlock[2][2] = new Block(2,2,color(255,247,0));
  }
  void makeT(){
    nextBlock[3][0] = new Block(3,0,color(255, 0, 204));
    nextBlock[3][1] = new Block(3,1,color(255, 0, 204));
    nextBlock[3][2] = new Block(3,2,color(255, 0, 204));
    nextBlock[2][1] = new Block(2,1,color(255, 0, 204));
  }
  void makeS(){
    nextBlock[3][0] = new Block(3,0,color(3, 255, 3));
    nextBlock[3][1] = new Block(3,1,color(3, 255, 3));
    nextBlock[2][1] = new Block(2,1,color(3, 255, 3));
    nextBlock[2][2] = new Block(2,2,color(3, 255, 3));
  }
  void makeL(){
    nextBlock[3][0] = new Block(3,0,color(255, 175, 3));
    nextBlock[3][1] = new Block(3,1,color(255, 175, 3));
    nextBlock[3][2] = new Block(3,2,color(255, 175, 3));
    nextBlock[2][2] = new Block(2,2,color(255, 175, 3));
  }
  void makeZ(){
    nextBlock[2][0] = new Block(2,0,color(255, 3, 53));
    nextBlock[2][1] = new Block(2,1,color(255, 3, 53));
    nextBlock[3][1] = new Block(3,1,color(255, 3, 53));
    nextBlock[3][2] = new Block(3,2,color(255, 3, 53));
  }
  void makeJ(){
    nextBlock[2][0] = new Block(2,0,color(192, 3, 255));
    nextBlock[3][0] = new Block(3,0,color(192, 3, 255));
    nextBlock[3][1] = new Block(3,1,color(192, 3, 255));
    nextBlock[3][2] = new Block(3,2,color(192, 3, 255));
  }
}
