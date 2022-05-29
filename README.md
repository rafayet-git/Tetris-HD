# Tetris-HD
Tetris for APCS Final Project

## **Falling Blocks**

By : Wing Jiang, Rafayet Hossain

https://docs.google.com/document/d/1ruSu0zpMZb-U_gtxiN6U1kYi0UaYIY6zf_DUmGutIEc/edit


**Brief Project Description:**
We are going to be making Tetris in Processing. You play Tetris by trying to fill out and removing rows using tetrominoes. Tetrominoes are tetris shapes made with 4 blocks: I, O, T, S, L, Z, and J. You lose when tetrominoes reach the top 4 rows on the screen. The tetris screen size is 10 by 20. When a row is filled with 10 blocks made by the tetrominoes, it gets removed and the rest of the blocks get shifted down. We will include different versions of tetris including the traditional version and more. 

## Compile instructions:

  ⋅⋅* Requires Processing 3.5.4 (https://processing.org/download)
  
## Development logs:

### Rafayet Hossain

*5/23:*\
I created the Grid  class, with the constructors and removeRow(row)

*5/24:*\
I worked on the Tetromino class, added the private variables and constructors as well as refill and getNextBlock

*5/25:*\
I worked on adding shapes for each tetromino, wrote the draw grid function and updated some stuff on block

*5/26:*\
I added a function canLockIn which can tell if a tetromino can be landed or not, i added drawGrid to display maps.

*5/27:*\
I made the block go down every 60 seconds, display for score and game over case.

*5/29:*\
I added block previewing which shows how blocks will show when placed, and pressing spacebar will drop it down there.

### Wing Jiang

*5/23:*\
I created the Block class. I added the constructor, as well as setColor() and remove().

*5/24:*\
I created the Move class. I added the methods to move and fixed Block class.

*5/25:*\
I started on the setup for Tetris class. I added the delay for block ticks and added keyPressed. 
