public class Grid{
  int h;
  int w;
  Block[][] grid;
  
  public Grid(int row, int col){ 
    h = row+4;
    w = col;
    grid = new Block[row+4][col];
  }
  public Grid(){ // Standard 10x20 grid
    this(20,10); 
  }
  void add(Block[][] next){ // for use with tetromino nextblock
    for (int i=0; i<4;i++){
     for(int j=0;j<4;j++){
       grid[i][(w/2)-2+j] = next[i][j];
     }
    }
  }
  void removeRow(int row){
    for (int i = 0; i < grid[row].length;i++){ // make them white for a small time
      grid[row][i].c = color(255);
    }
    draw();
    delay(100);
    for (int i = 0; i < grid[row].length;i++){ // remove current row
      grid[row][i] = null;
    }
    for (int i = row-1; i>=0;i--){
       for (int j = 0; j<grid[row].length;j++){ // mv top blocks down
          grid[i+1][j] = grid[i][j];
          grid[i][j] = null;
       }
    }
  }
  
}
