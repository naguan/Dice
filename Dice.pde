Die one;
Die two;
int total = 0;
void setup()
{
  size(140, 140);
  noLoop();
}
void draw()
{
  total = 0;
  background(0);
  one = new Die(20, 50);
  two = new Die(70, 50);
  one.roll();
  two.roll();
  fill(255);
  text("Total roll is " + total, 35, 30);
}
void mousePressed()
{
  redraw(); 
}
class Die //models one single dice cube
{
  int numDie, myX, myY;//variable declarations here
  Die(int x, int y) //constructor
  {
    {
      numDie = (int)(Math.random()*6)+1;
      myX = x;
      myY = y;
    }
  }
  void roll()
  {
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(myX, myY, 50, 50);
    if (numDie ==1 )
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+25, myY+25, 10, 10);
      total = total + 1;
    }
    if (numDie ==2 )
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+35, myY+35, 10, 10);
      total = total + 2;
    }
    if (numDie ==3 )
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      total = total +3;
    }
    if (numDie ==4 )
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      total = total + 4;
    }
    if (numDie ==5 )
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      total = total + 5;
    }
    if (numDie ==6 )
    {
      fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      total = total + 6;
    }
  }
}
