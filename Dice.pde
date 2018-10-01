int DiceSum = 0;
void setup()
{
  size(500, 500);
  noLoop();
  textAlign(CENTER);
  textSize(50);
}
void draw()
{
  for (int y = 0; y <= 500; y += 25)
  {
    for (int x = 0; x <= 500; x += 25)
    {
      Die dice = new Die(x,y);
      dice.roll();
      dice.show();
      DiceSum = DiceSum + dice.Pips;
    }
  }
  counter();
}
void mousePressed()
{
  redraw();
  DiceSum = 0;
  fill(255);
}
class Die
{
  int Pips, DieX, DieY; 
  Die(int x, int y)
  {
    DieX = x; 
    DieY = y;
  }
  void roll()
  {
    Pips = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    rect(DieX, DieY, 25, 25, 5); 
    if (Pips == 1)
    {
      ellipse(DieX + 12.5, DieY + 12.5, 5, 5);
    } 
    else if (Pips == 2)
    {
      ellipse(DieX + 5, DieY + 12.5, 5, 5); 
      ellipse(DieX + 20, DieY + 12.5, 5, 5);
    } 
    else if (Pips == 3)
    {
      ellipse(DieX + 5, DieY + 5, 5, 5); 
      ellipse(DieX + 12.5, DieY + 12.5, 5, 5); 
      ellipse(DieX + 20, DieY + 20, 5, 5);
    } 
    else if (Pips == 4)
    { 
      ellipse(DieX + 5, DieY + 5, 5, 5); 
      ellipse(DieX + 5, DieY + 20, 5, 5); 
      ellipse(DieX + 20, DieY + 5, 5, 5); 
      ellipse(DieX + 20, DieY + 20, 5, 5);
    } 
    else if (Pips == 5)
    {
      ellipse(DieX + 5, DieY + 5, 5, 5); 
      ellipse(DieX + 5, DieY + 20, 5, 5); 
      ellipse(DieX + 20, DieY + 5, 5, 5); 
      ellipse(DieX + 20, DieY + 20, 5, 5); 
      ellipse(DieX + 12.5, DieY + 12.5, 5, 5);
    } 
    else if (Pips == 6)
    {
      ellipse(DieX + 12.5, DieY + 5, 5, 5); 
      ellipse(DieX + 5, DieY + 5, 5, 5); 
      ellipse(DieX + 5, DieY + 20, 5, 5); 
      ellipse(DieX + 20, DieY + 5, 5, 5); 
      ellipse(DieX + 20, DieY + 20, 5, 5); 
      ellipse(DieX + 12.5, DieY + 20, 5, 5);
    }
  }
}

void counter()
  {
    fill(255,0,0);
    text("Dice Sum: " + DiceSum,250,250);
  }