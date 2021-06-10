int[][] current;//current generation
int[][] future;//Star Trek, the next generation
boolean start = false;//to start and stop the simulation
int[] cChange = new int[2];//for translating mouse position to grid coordinates
int rows;//num rows in the grid
int cols;//num cols in the grid
void setup(){
  frameRate(15);//can change this to speed up or slow down animation/generation speed
  background(0);
  size(2400,1320);
  rows = width/20;
  cols = height/20;
  current = new int[rows][cols];
  future = new int[rows][cols];
  stroke(200);
  for(int i = 1; i < (rows-1); i++)//vertical grid lines
  {
    line(20*i,20,20*i,height-20);
  }
  for(int i = 1; i < (rows-1); i++)//horizontal grid lines
  {
    line(20,20*i,width-20,20*i);
  }
  for(int i = 1; i < (rows-1); i ++)//nested loop sets all cells to 0 or "dead"
  {
    for(int j = 1; j < (cols-1); j++)
    {
        current[i][j] = 0;
        future[i][j] = 0;
    }
  }
}
void draw(){
    for(int i = 1; i < (rows-1); i ++)//nested loop draws each 0 cell black, and each 1 cell white
    {
      for(int j = 1; j < (cols-1); j++)
      {
        if(current[i][j] == 1)
        {
          fill(255,255,255);
          rect(i*20,j*20,20,20);
        }
        else
        {
          fill(0,0,0);
          rect(i*20,j*20,20,20);
        }
      }
    }
   if(start)
     runSim();
  
}
void runSim()//next generation simulator
{
  for(int i = 1; i < (rows-1); i++)
  {
    for(int j = 1; j < (cols-1); j++)
    {
      int a = getAN(i,j);//gets number of alive neighbors
      if(current[i][j] == 1 && a < 2)              //
        future[i][j] = 0;                          //
      else if(current[i][j] == 1 && a > 3)         //
        future[i][j] = 0;                          //     These rules follow Conway's game of life to find the next generation
      else if(current[i][j] == 0 && a == 3)        //     the future generation is found based on the state of the current one
        future[i][j] = 1;                          //
      else                                         //
        future[i][j] = current[i][j];              //
    }
  }
  for(int i = 1; i < (rows-1); i ++)
  {
     for(int j = 1; j < (cols-1); j++)
     {
       current[i][j] = future[i][j]; //copies future's data into current. We cannot use = here because it causes some pointer issues.
     }
  }
}
int getAN(int x, int y)//num alive neighbors
{
  int numA = 0;
  for(int i = -1; i < 2; i++)
  {
    for(int j = -1; j < 2; j++)
    {
      numA += current[x+i][y+j];//gets all cells surrounding the current one's alive/dead status (horizontal, vertical, and diagonal)
    }
  }
  numA -= current[x][y];//need to make sure we don't count the cell itself as a neighbor
  return numA;
}
void keyReleased()
{
  if(key =='s')//releasing s starts sim
    start = !start;
  if(key == 'c')//releasing c clears the board
  {
    start = false;
    clearBoard();
  }
  if(key == 'r')//releasing r creates a random board
  {
    randomBoard();
  }
}
int[] getCell(int x, int y)
{
  int[] c = new int[2];
  c[0] = x/20;          //
  c[1] = y/20;          //  Each cell is 20 pixels, so we can use int division to easily get the exact array indexes of the pixel parameters
  return c;             //
}
void mouseReleased()
{
  if(!start)//can only add cells if we havent started the sim
    {
        cChange = getCell(mouseX, mouseY);//grab array indexes of current mose coordinates
        if(current[cChange[0]][cChange[1]] == 1)//sets cell to dead if alive
          current[cChange[0]][cChange[1]] = 0;
         else//sets cell to alive if dead
           current[cChange[0]][cChange[1]] = 1;
    }
    
}
void clearBoard()
{
  for(int i = 1; i < (rows-1); i ++)//clears the board
  {
    for(int j = 1; j < (cols-1); j++)
    {
      current[i][j] = 0;
    }
  }
}
void randomBoard()
{
  for(int i = 1; i < (rows-1); i ++)//creates a random board
  {
    for(int j = 1; j < (cols-1); j ++)
    {
      current[i][j] = (int) random(2);
    }
  }
}
