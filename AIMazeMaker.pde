// A simple Maze Maker
// Use the "RIGHT" arrow to change between a solid
// block and end of maze block.
// Use the "UP" arrow to generate the array
// code in the console.

int realMaze[][]={
  {9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9}, 
  {9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9}
};

int placeMode=0;

void setup()
{
  size(508, 508);
}


void draw()
{
  background(0, 0, 0);

  if (placeMode==0) {
    fill(255); 
    rect(mouseX-16, mouseY-16, 32, 32);
  } else if (placeMode==1) {
    fill(0, 255, 0); 
    rect(mouseX-16, mouseY-16, 32, 32);
  }

  for (int y=0; y<14; y++) {
    for (int x=0; x<14; x++) {
      if (realMaze[y][x]==0) {
        fill(0, 0, 0);
        stroke(255, 255, 255);
        rect(x*32+32, y*32+32, 32, 32);
      }

      if (realMaze[y][x]==1 || realMaze[y][x]==9) {
        fill(255, 255, 255);
        stroke(255, 255, 255);
        rect(x*32+32, y*32+32, 32, 32);
      }

      if (realMaze[y][x]==3) {
        fill(255, 0, 0);
        stroke(255, 255, 255);
        ellipse(x*32+48, y*32+48, 32, 32);
      }

      if (realMaze[y][x]==5) {
        fill(0, 255, 0);
        stroke(255, 255, 255);
        rect(x*32+32, y*32+32, 32, 32);
      }
    }
  }
}


void mousePressed() {

  for (int y=0; y<14; y++) {
    for (int x=0; x<14; x++) {

      int realMouseY=mouseY;

      if (realMouseY>y*32+32 && realMouseY<y*32+64
        && mouseX>x*32+32 && mouseX<x*32+64) {
        if (placeMode==0) {  
          if (realMaze[y][x]==0) {
            realMaze[y][x]=1;
          } else if (realMaze[y][x]==1) {
            realMaze[y][x]=0;
          }
        }

        if (placeMode==1) {  
          if (realMaze[y][x]==0) {
            realMaze[y][x]=5;
          } else if (realMaze[y][x]==5) {
            realMaze[y][x]=0;
          }
        }
      }
    }
  }
}



void keyPressed()
{
  if (key == CODED) {

    if (keyCode == RIGHT) {
      placeMode++;

      if (placeMode==2) {
        placeMode=0;
      }
    }
    if (keyCode == UP) {
      println("");
      println("int realMaze[][]={");
      for (int y=0; y<14; y++) {

        print("{");
        for (int x=0; x<14; x++) {
          if (x!=13) {
            if (realMaze[y][x]==9) {
              print(1+",");
            } else {
              print(realMaze[y][x]+",");
            }
          }

          if (x==13) {
            if (realMaze[y][x]==9) {
              print(1);
            } else {
              print(realMaze[y][x]);
            }
          }
        }

        if (y!=13) {
          print("},\n");
        }

        if (y==13) {
          print("}\n");
        }
      }
      print("};");
    }
  }
}
