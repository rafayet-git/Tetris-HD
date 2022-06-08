class Controller {
  boolean [] inputs;

  public Controller() {
    inputs = new boolean[9];
  }

  boolean isPressed(int code) {
    return inputs[code];
  }

  void press(int code) {
    if(code == 'a' || code == 'A')
    inputs[0] = true;
    if(code == 'd' || code == 'D')
    inputs[1] = true;
    if(code == ' ')
    inputs[2] = true;
    if(code == 'w' || code == 'W')
    inputs[3] = true;
    if(code == 'e' || code == 'E')
    inputs[4] = true;
    if(code == 's' || code == 'S')
    inputs[5] = true;
    if(code == 'q' || code == 'Q')
    inputs[6] = true;
    if(code == 'p' || code == 'P')
    inputs[7] = true;
    if (code == 8)
    inputs[8] = true;
  }
  void release(int code) {
    if(code == 'a' || code == 'A')
    inputs[0] = false;
    if(code == 'd' || code == 'D')
    inputs[1] = false;
    if(code == ' ')
    inputs[2] = false;
    if(code == 'w' || code == 'W')
    inputs[3] = false;
    if(code == 'e' || code == 'E')
    inputs[4] = false;
    if(code == 's' || code == 'S')
    inputs[5] = false;
    if(code == 'q' || code == 'Q')
    inputs[6] = false;
    if(code == 'p' || code == 'P')
    inputs[7] = false;
    if (code == 8)
    inputs[8] = false;
  }
}


void checkuserInputs(){
  if (mode != 0){
    if (keyInput.isPressed(0)){
      map.moveLeft();
    }
    if (keyInput.isPressed(1)){
      map.moveRight();
    }
    if (keyInput.isPressed(2)){
      if (!toBePressed)map.dropDown();
      delay = 0;
    }
    if (keyInput.isPressed(3)){
      map.rotateCounter(false);
    }
    if (keyInput.isPressed(4)){
      map.rotateCounter(true);
    }
    if (keyInput.isPressed(5)){
      if (!toBePressed) delay = 60 - ((level-1) * 2);
      map.moveDown();
    }
    if (keyInput.isPressed(6)){
      
    }
    if (keyInput.isPressed(7)){
      
    }
    if (keyInput.isPressed(8)){
      
    }
  }
}


//    case 'w':
//      map.rotateCounter(false);
//      break;
//    case 'e':
//      map.rotateCounter(true);
//      break;
//    case 's':
      if (!toBePressed) delay = 60 - ((level-1) * 2);
      map.moveDown();
//      break;
//    case 'q':
//      holdBlock();
//      break;
//    case 'p':
//      pause();
//      break;
//    case 8:
//      score = 0;
//      level = 0;
//      linesRemoved = 0;
//      map.clearTable();
//      addBlock();
//      lose = false;
//      pieces.canHold = true;
//      pieces.hasHold = false;
//      pieces.clearHold();
//      break;
