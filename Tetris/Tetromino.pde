import java.util.*;
public class Tetromino {
  ArrayDeque<Character> QueuedBlocks;
  Block[][] nextBlock;
  color holdBlock;

  public Tetromino() {
    nextBlock = new Block[4][3];
    QueuedBlocks = new ArrayDeque<Character>();
    refill();
    getNextBlock();
  }
  void holdBlock() {
    holdBlock = nextBlock[0][1].c;
  }

  void refill() { // refill the block queue if empty
    Character[] blocks = {'I', 'O', 'T', 'S', 'L', 'Z', 'J'};
    List<Character> shuffler = Arrays.asList(blocks);
    Collections.shuffle(shuffler);
    for (int i = 0; i < shuffler.size(); i++) {
      QueuedBlocks.add(shuffler.get(i));
    }
  }
  void getNextBlock(){ // do grid.add before this
    for(Block[] temp : nextBlock){
      Arrays.fill(temp, null);
    }
    if (QueuedBlocks.size() <= 4) refill();
    char currentet = QueuedBlocks.removeFirst();
    switch(currentet){
      case 'I':
        nextBlock = makeI();
        break;
      case 'O':
        nextBlock = makeO();
        break;
      case 'T':
        nextBlock = makeT();
        break;
      case 'S':
        nextBlock = makeS();
        break;
      case 'L':
        nextBlock = makeL();
        break;
      case 'Z':
        nextBlock = makeZ();
        break;
      case 'J':
        nextBlock = makeJ();
        break;
    }
  }
  Block[][] makeI(){
    Block[][] tm = new Block[4][3];
    tm[3][0] = new Block(I);
    tm[2][0] = new Block(I);
    tm[1][0] = new Block(I);
    tm[0][0] = new Block(I);
    return tm;
  }
  Block[][] makeO(){
    Block[][] tm = new Block[4][3];
    tm[3][0] = new Block(O);
    tm[3][1] = new Block(O);
    tm[2][0] = new Block(O);
    tm[2][1] = new Block(O);
    return tm;
  }
  Block[][] makeT(){
    Block[][] tm = new Block[4][3];
    tm[3][0] = new Block(T);
    tm[3][1] = new Block(T);
    tm[3][2] = new Block(T);
    tm[2][1] = new Block(T);
    return tm;
  }
  Block[][] makeS(){
    Block[][] tm = new Block[4][3];
    tm[3][0] = new Block(S);
    tm[3][1] = new Block(S);
    tm[2][1] = new Block(S);
    tm[2][2] = new Block(S);
    return tm;
  }
  Block[][] makeL(){
    Block[][] tm = new Block[4][3];
    tm[3][0] = new Block(L);
    tm[3][1] = new Block(L);
    tm[3][2] = new Block(L);
    tm[2][2] = new Block(L);
    return tm;
  }
  Block[][] makeZ(){
    Block[][] tm = new Block[4][3];
    tm[2][0] = new Block(Z);
    tm[2][1] = new Block(Z);
    tm[3][1] = new Block(Z);
    tm[3][2] = new Block(Z);
    return tm;
  }
  Block[][] makeJ(){
    Block[][] tm = new Block[4][3];
    tm[2][0] = new Block(J);
    tm[3][0] = new Block(J);
    tm[3][1] = new Block(J);
    tm[3][2] = new Block(J);
    return tm;
  }
  //Block[][] genNextBlocks(){

  //}
}
