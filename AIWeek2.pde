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

int moves=0;

float dir=0;
int herox=1;
int heroy=1;




void setup()
{
  rectMode(CENTER);
  size(700, 600);

  herox=1;
  heroy=1;
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


  text("Moves: "+moves, 500, 120);
  //left
  if (dir==1 && (maze[heroy][herox-1]==0 || maze[heroy][herox-1]==5)) {
    herox-=1;
    moves+=1;
  }
  //right
  else if (dir==2 && (maze[heroy][herox+1]==0 || maze[heroy][herox+1]==5)) {
    herox+=1;
    moves+=1;
  }
  //up
  else if (dir==3 && (maze[heroy-1][herox]==0 || maze[heroy-1][herox]==5)) {
    heroy-=1;
    moves+=1;
  }
  //down
  else if (dir==4 && (maze[heroy+1][herox]==0 || maze[heroy+1][herox]==5)) {
    heroy+=1;
    moves+=1;
  }





  for (int y=0; y<14; y++) {
    for (int x=0; x<14; x++) {

      if (maze[y][x]==1) {
        fill(255);
        rect(x*32+32, y*32+32, 32, 32);
      }

      //maze[heroy][herox]=3;
      //if (maze[y][x]==3){
      fill(255, 0, 0);  
      ellipse((herox*32)+32, (heroy*32)+32, 32, 32);
      //}

      if (maze[y][x]==5) {
        fill(0, 155, 170);  
        rect(x*32+32, y*32+32, 32, 32);
      }

      if (maze[y][x]==2) {
        fill(130, 155, 170);  
        rect(x*32+32, y*32+32, 16, 16);
      }

      if (maze[y][x]==20) {
        fill(255, 155, 170);  
        rect(x*32+32, y*32+32, 16, 16);
      }
    }
  }


  if (maze[heroy][herox]==5) {
    while (true) {
    }
  }
}
