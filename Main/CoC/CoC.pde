
PImage bImg;
Unit[][] grid;
PFont font;
void setup(){
  size(1000,1000);
  background(0);
  bImg = loadImage("grass.jpg");
  image(bImg,0,0);
  grid = new Unit[10][10];
  grid[0][0] = new Monster(0,0);
  grid[5][6] = new Defense(5,6);
}

void draw(){
  for (Unit[] x : grid){
    for (Unit y : x){
      if (y!=null){
        y.draw();
      }
    }
  }
}