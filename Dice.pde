void setup()
{
  noLoop();
  size(400,400);
}
void draw()
{
  int total = 0;
  for(int y = 0; y <=350; y += 50){
    for (int x = 0; x <=350; x += 50){
      Die gorb = new Die(y,x);
      gorb.roll();
      gorb.show();
      total += gorb.value;
    }
  }
  fill(255,255,255);
  rect(90,80,100,50);
  fill(0,0,0);
  text("total is: " + total,100,100);
}
void mousePressed()
{
  
}
class Die
{
  int x, y, value;

  Die(int x, int y)
  {
    this.x = x;
    this.y = y;
    value = 6;
  }
  
  void roll()
  {
    value = (int)(Math.random() * 6) + 1;
  }
  
  void show()
  {
    fill(255,255,255);
    square(x, y, 50);
    fill(0,0,0);
    if (value == 1){
      circle(x+25,y+25, 10);
    }else if (value == 2){
      circle(x+15,y+15, 10);
      circle(x+35,y+35, 10);
    }else if (value == 3){
      circle(x+10,y+10, 10);
      circle(x+25,y+25, 10);
      circle(x+40,y+40, 10);
    }else if (value == 4){
      circle(x+10,y+10, 10);
      circle(x+40,y+10, 10);
      circle(x+10,y+40, 10);
      circle(x+40,y+40, 10);
    }else if (value == 5){
      circle(x+10,y+10, 10);
      circle(x+40,y+10, 10);
      circle(x+25,y+25, 10);
      circle(x+10,y+40, 10);
      circle(x+40,y+40, 10);
    }else if (value == 6){
      circle(x+10,y+10, 10);
      circle(x+10,y+25, 10);
      circle(x+10,y+40, 10);
      circle(x+40,y+40, 10);
      circle(x+40,y+25, 10);      
      circle(x+40,y+10, 10);
    }
      
    }
  }
