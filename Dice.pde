void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  for (int y = 0; 
    Die dice = new Die(x, y); 
    dice.roll(); 
    dice.show();
}
void mousePressed()
{
  redraw();
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
    Pips = 6;
  }
  void show()
  {
    rect(DieX, DieY, 25, 25, 5); 
      if (Pips == 1)
    {
      ellipse(DieX + 12.5, DieY + 12.5, 5, 5);
    } else if (Pips == 2)
    {
      ellipse(DieX + 5, DieY + 12.5, 5, 5); 
        ellipse(DieX + 20, DieY + 12.5, 5, 5);
    } else if (Pips == 3)
    {
      ellipse(DieX + 5, DieY + 5, 5, 5); 
        ellipse(DieX + 12.5, DieY + 12.5, 5, 5); 
        ellipse(DieX + 20, DieY + 20, 5, 5);
    } else if (Pips == 4)
    { 
      ellipse(DieX + 5, DieY + 5, 5, 5); 
        ellipse(DieX + 5, DieY + 20, 5, 5); 
        ellipse(DieX + 20, DieY + 5, 5, 5); 
        ellipse(DieX + 20, DieY + 20, 5, 5);
    } else if (Pips == 5)
    {
      ellipse(DieX + 5, DieY + 5, 5, 5); 
        ellipse(DieX + 5, DieY + 20, 5, 5); 
        ellipse(DieX + 20, DieY + 5, 5, 5); 
        ellipse(DieX + 20, DieY + 20, 5, 5); 
        ellipse(DieX + 12.5, DieY + 12.5, 5, 5);
    } else if (Pips == 6)
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