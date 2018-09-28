int xx; 
int counter; 
void setup()
{
  size(300, 300);
  noLoop();
}
void draw()
{
  background(0);
  for(int y = 50; y < 300; y += 140){
    for(int x = 10; x < 300; x += 115){
      Die dice = new Die(x, y);
      counter += xx;
      dice.show();
    }
  }
  fill(255);
  text("Total: " + counter, 125, 150);
}
void mousePressed()
{
  redraw();
  counter = 0;
}
class Die
{
  int myX, myY;
  Die(int x, int y)
  {
    myX = x; 
    myY = y;
    roll();
  }
  void roll()
  {
    xx = (int)(Math.random()*6 +1);
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);
    if(xx == 1){
      fill(0);
      ellipse(myX +25, myY +25, 10, 10);
    }else if(xx == 2){
      fill(0);
      ellipse(myX +15, myY +15, 10, 10);
      ellipse(myX +35, myY +35, 10, 10);
    }else if(xx == 3){
      fill(0);
      ellipse(myX +15, myY +15, 10, 10);
      ellipse(myX +25, myY +25, 10, 10);
      ellipse(myX +35, myY +35, 10, 10);
    }else if(xx == 4){
      fill(0);
      ellipse(myX +15, myY +15, 10, 10);
      ellipse(myX +35, myY +35, 10, 10);
      ellipse(myX +15, myY +35, 10, 10);
      ellipse(myX +35, myY +15, 10, 10);
    }else if(xx == 5){
      fill(0);
      ellipse(myX +15, myY +15, 10, 10);
      ellipse(myX +35, myY +35, 10, 10);
      ellipse(myX +35, myY +15, 10, 10);
      ellipse(myX +15, myY +35, 10, 10);
      ellipse(myX +25, myY +25, 10, 10);
    }else{
      fill(0);
      ellipse(myX +15, myY +12, 10, 10);
      ellipse(myX +35, myY +39, 10, 10);
      ellipse(myX +35, myY +12, 10, 10);
      ellipse(myX +15, myY +39, 10, 10);
      ellipse(myX +15, myY +26, 10, 10);
      ellipse(myX +35, myY +26, 10, 10);
    }
  }
}

