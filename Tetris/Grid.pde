public class Grid {
  int size;
  int h;
  int w;
  Block[][] grid;
  int[][] currentBlockxy;

  public Grid(int row, int col, int size_) { 
    currentBlockxy = new int[4][2];
    h = row+4;
    w = col;
    size =size_;
    grid = new Block[row+4][col];
  }
  public Grid() { // Standard 10x20 grid
    this(20, 10, 20);
  }
  void clearCurrent() {
    for (int i = 0; i<4; i++) {
      grid[currentBlockxy[i][0]][currentBlockxy[i][1]].isCurrent = false;
    }
  }
  void add(Block[][] next) { // for use with tetromino nextblock
    int count = 0;
    for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
        grid[i][(w/2)-2+j] = next[i][j];
        if (grid[i][(w/2)-2+j] != null) {
          grid[i][(w/2)-2+j].isCurrent = true;
          currentBlockxy[count][0] = i;
          currentBlockxy[count][1] = (w/2)-2+j;
          count++;
        }
      }
    }
  }
  void removeRow(int row) {
    for (int i = 0; i < grid[row].length; i++) { // make them white for a small time
      grid[row][i] = new Block(0, 0, color(255));
    }
    draw();
    delay(100);
    for (int i = 0; i < grid[row].length; i++) { // remove current row
      grid[row][i] = null;
    }
    for (int i = row-1; i>=0; i--) {
      for (int j = 0; j<grid[row].length; j++) { // mv top blocks down
        grid[i+1][j] = grid[i][j];
        grid[i][j] = null;
      }
    }
  }

  boolean canLockIn() {
    for (int i = 0; i<4; i++) {
      if (currentBlockxy[i][0]+1==grid.length) return true;
      if (grid[currentBlockxy[i][0]+1][currentBlockxy[i][1]] != null && grid[currentBlockxy[i][0]+1][currentBlockxy[i][1]].isCurrent == false) {
        return true;
      }
    }
    return false;
  }
  void moveLeft() {
    if (!canLockIn()) {
      color col = grid[currentBlockxy[0][0]][currentBlockxy[0][1]].c;    
      for (int i = 0; i<4; i++) {
        grid[currentBlockxy[i][0]][currentBlockxy[i][1]] = null;
      }
      for (int i = 0; i<4; i++) {
        if (currentBlockxy[i][1]-1 >= 0) {
          grid[currentBlockxy[i][0]][currentBlockxy[i][1]-1] = new Block(col);
          grid[currentBlockxy[i][0]][currentBlockxy[i][1]-1].isCurrent = true;
          currentBlockxy[i][1]--;
        }
      }
    }
  }
  void moveRight() {
    if (!canLockIn()) {
      color col = grid[currentBlockxy[0][0]][currentBlockxy[0][1]].c;    
      for (int i = 0; i<4; i++) {
        grid[currentBlockxy[i][0]][currentBlockxy[i][1]] = null;
      }
      for (int i = 0; i<4; i++) {
        if (currentBlockxy[i][1]+1 < 10) {
          grid[currentBlockxy[i][0]][currentBlockxy[i][1]+1] = new Block(col);
          grid[currentBlockxy[i][0]][currentBlockxy[i][1]+1].isCurrent = true;
          currentBlockxy[i][1]++;
        }
      }
    }
  }
  void moveDown() {
    if (!canLockIn()) {
      color col = grid[currentBlockxy[0][0]][currentBlockxy[0][1]].c;    
      for (int i = 0; i<4; i++) {
        grid[currentBlockxy[i][0]][currentBlockxy[i][1]] = null;
      }
      for (int i = 0; i<4; i++) {
        grid[currentBlockxy[i][0]+1][currentBlockxy[i][1]] = new Block(col);
        grid[currentBlockxy[i][0]+1][currentBlockxy[i][1]].isCurrent = true;
        currentBlockxy[i][0]++;
      }
    }
  }
  void dropDown() {
  }
  void rotateCounter() {
  }
}
