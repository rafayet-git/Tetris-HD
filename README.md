# Tetris-HD
Tetris for APCS Final Project

## **Falling Blocks**

By : Wing Jiang, Rafayet Hossain

[Link to prototype](https://docs.google.com/document/d/1ruSu0zpMZb-U_gtxiN6U1kYi0UaYIY6zf_DUmGutIEc/edit)


**Brief Project Description:**
We are going to be making Tetris in Processing. You play Tetris by trying to fill out and removing rows using tetrominoes. Tetrominoes are tetris shapes made with 4 blocks: I, O, T, S, L, Z, and J. You lose when tetrominoes reach the top 4 rows on the screen. The tetris screen size is 10 by 20. When a row is filled with 10 blocks made by the tetrominoes, it gets removed and the rest of the blocks get shifted down. We will include different versions of tetris including the traditional version and more. 

## Compile instructions:

  * Requires Processing 3.5.4 (https://processing.org/download)
  
## Controls:

  * 'w' to rotate clockwise, 'e' to rotate counterclockwise
  * 'a' to move left, 'd' to move right
  * Spacebar to drop blocks down
  * 'q' to hold block
  * 's' to move down
  * Backspace to reset board
  * 'p' to pause
	* Pressing backspace here will return to menu
  * (CHEAT!) 'x' to add lines cleared count by 1

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

*5/31:*\
I started on rotate, working on rotating current blocks

*6/1:*\
I finished rotation of all pieces, made the tetris pieces save the y coordinate when adding new blocks

*6/2:*\
I made the make functions on tetromino local, so they can be used on other functions

*6/3:*\
I made the blocks have a cooldown before being fully placed, and adjusted design

*6/6:*\
I added holding blocks for future use

*6/7:*\
I worked on improving the rotation, i added checks for L tetromino

*6/9:*\
I finished adding basic wall kicking when rotating blocks, using 5 checks.

### Wing Jiang

*5/23:*\
I created the Block class. I added the constructor, as well as setColor() and remove().

*5/24:*\
I created the Move class. I added the methods to move and fixed Block class.

*5/25:*\
I started on the setup for Tetris class. I added the delay for block ticks and added keyPressed. 

*5/26:*\
I fixed some methods in Block and added positions to blocks. I added move to Tetris class instead.

*5/27:*\
I edited the main Tetris class to draw out grid. I also fixed moveLeft and moveRight.

*5/28:*\
I fixed the move methods and added a method to check if row is full.

*5/30:*\
I added the method to rotate the Tetromino.

*5/31:*\
I fixed the method to check if the Tetromino can rotate.

*6/1:*\
I added canRotate to all Tetrominos. I also added levels. I also started the method to hold the Tetromino.

*6/2:*\
I continued to fix the method for holding the Tetromino block.

*6/5:*\
I fixed the hold method for Tetrominos. I also made blocks fall slower as the level increases.

*6/6:*\
I added a drawMain method to display an initial screen to select which mode to play.

*6/7:*\
I added the game mode play40 where player tries to clear 40 lines in the shortest time.

*6/8:*\
I started the game mode where the rows shift up and add a new row at the bottom after every few moves.
