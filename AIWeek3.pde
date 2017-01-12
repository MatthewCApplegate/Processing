int lastRoute[][]={
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
};


int maze[][]={
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
};

int realMaze[][]={
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, 
  {1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1}, 
  {1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1}, 
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1}, 
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
};

PFont font;

int Generations=0;
int moves=0;
int LeastMoves=9999;
int possible=28;
int notMoved=0;
float dir=0;
int herox=1;
int heroy=1;



void setup()
{
  rectMode(CENTER);
  size(700, 600);
  notMoved=0;
  dir=0;
  
  //Always remember to create this font using the "Font" option under the "Tools" menu.
  font=loadFont("ArialMT-20.vlw");

  for (int y=0; y<14; y++) {
    for (int x=0; x<14; x++) {
      maze[y][x]=realMaze[y][x];
    }
  }
}


void draw()
{
  background(0);
  dir=random(1, 5);
  dir=int(dir);

  text("Generations: "+Generations, 500, 30);
  text("Least Moves: "+LeastMoves, 500, 60);
  text("Least Moves Possible: "+possible, 500, 90);
  text("Moves: "+moves, 500, 120);
  //left
  if (dir==1 && (maze[heroy][herox-1]==0 || maze[heroy][herox-1]==5)) {
    maze[heroy][herox]=2;
    herox-=1;
    moves+=1;
  }
  //right
  else if (dir==2 && (maze[heroy][herox+1]==0 || maze[heroy][herox+1]==5)) {
    maze[heroy][herox]=2;
    herox+=1;
    moves+=1;
  }
  //up
  else if (dir==3 && (maze[heroy-1][herox]==0 || maze[heroy-1][herox]==5)) {
    maze[heroy][herox]=2;
    heroy-=1;
    moves+=1;
  }
  //down
  else if (dir==4 && (maze[heroy+1][herox]==0 || maze[heroy+1][herox]==5)) {
    maze[heroy][herox]=2;
    heroy+=1;
    moves+=1;
  }
  //no movement                                       
  else {
    notMoved+=1;
  }

  if (moves>LeastMoves) {
    cleanUp();
  }

  if (maze[heroy][herox]==5) {
    if (moves<LeastMoves) {
      LeastMoves=moves;
    }
    for (int y=0; y<14; y++) {
      for (int x=0; x<14; x++) {
        if (maze[y][x]==2) {
          lastRoute[y][x]=2;
        }
        if (lastRoute[y][x]==0 && realMaze[y][x]!=5) {
          realMaze[y][x]=1;
        }
        lastRoute[y][x]=0;
      }
    }

    cleanUp();
  }

  if (LeastMoves==possible) {
    while (true) {
    }
  }

  if (notMoved==32) {

    for (int y=0; y<14; y++) {
      for (int x=0; x<14; x++) {
        if (maze[y][x]==2) {
          lastRoute[y][x]=2;
        }
      }
    }
    setup();
  }

  for (int y=0; y<14; y++) {
    for (int x=0; x<14; x++) {

      if (maze[y][x]==1) {
        fill(255);
        rect(x*32+32, y*32+32, 32, 32);
      }

      fill(255, 0, 0);  
      ellipse((herox*32)+32, (heroy*32)+32, 32, 32);

      if (maze[y][x]==5) {
        fill(0, 155, 170);  
        rect(x*32+32, y*32+32, 32, 32);
      }
      
      //Last Movements
      if (maze[y][x]==2) {
        fill(130, 155, 170);  
        rect(x*32+32, y*32+32, 16, 16);
      }
      
      //Last Route
      if (lastRoute[y][x]==2) {
        fill(255, 255, 255);  
        ellipse(x*32+32, y*32+32, 4, 4);
      }
    }
  }
}

void cleanUp()
{
    moves=0;
    Generations+=1;
    herox=1;
    heroy=1;
    setup();
}
