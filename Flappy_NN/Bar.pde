class Bar
{
  float x, y;
  Bar()
  {
    x = width;
    y = random(90, height - 90);
  }
  
  void drawBar()
  {
    line(x, y - 110, x, y + 110);
    x--;
  }
  
}
