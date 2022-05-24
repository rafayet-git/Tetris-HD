import java.util.*;
public class Tetromino{
  ArrayDeque<Character> QueuedBlocks;
  ArrayList<int[]> currentBlock;
  Block[][] nextBlock;
  //Block[][] holdBlock; I have no idea how hold works in tetris
  public Tetromino(){
    nextBlock = new Block[4][4];
    refill();
  }

}
