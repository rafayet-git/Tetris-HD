import java.util.*;
public class Tetromino{
  final color I = color(52,235,222);
  final color O = color(255,247,0);
  final color T = color(255, 0, 204);
  final color S = color(3, 255, 3);
  final color L = color(255, 175, 3);
  final color Z = color(255, 3, 53);
  final color J = color(192, 3, 255);
  ArrayDeque<Character> QueuedBlocks;
  Block[][] nextBlock;
  //Block[][] holdBlock; I have no idea how hold works in tetris
  public Tetromino(){
    nextBlock = new Block[4][3];
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
    nextBlock[2][1] = new Block(color(3, 255, 3));
    nextBlock[2][2] = new Block(color(3, 255, 3));
  }
  void makeL(){
    nextBlock[3][0] = new Block(color(255, 175, 3));
    nextBlock[3][1] = new Block(color(255, 175, 3));
    nextBlock[3][2] = new Block(color(255, 175, 3));
    nextBlock[2][2] = new Block(color(255, 175, 3));
  }
  void makeZ(){
    nextBlock[2][0] = new Block(color(255, 3, 53));
    nextBlock[2][1] = new Block(color(255, 3, 53));
    nextBlock[3][1] = new Block(color(255, 3, 53));
    nextBlock[3][2] = new Block(color(255, 3, 53));
  }
  void makeJ(){
    nextBlock[2][0] = new Block(color(192, 3, 255));
    nextBlock[3][0] = new Block(color(192, 3, 255));
    nextBlock[3][1] = new Block(color(192, 3, 255));
    nextBlock[3][2] = new Block(color(192, 3, 255));
  }
}
