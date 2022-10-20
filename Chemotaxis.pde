//declare bacteria variables here   
Bacteria hi;
Bacteria[] ge;


void setup()   

{     
  size(500, 500);
  background(0);
  hi = new Bacteria();
  ge = new Bacteria[1000];
  for (int i=0; i<ge.length; i++) {
    ge[i] = new Bacteria();
  }
}   
void draw()   
{    
  background(0);
  for (int i=0; i<ge.length; i++) {
    ge[i].walk();
    ge[i].show();
  }
}  
class Bacteria    
{     
  int myX, myY, myColor;
  Bacteria()

  {
    myX = myY = 250;
    myColor = color(200,100, 100);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
fill(myColor);
      ellipse(myX, myY, 25, 25);
    if (mouseX > myX) 
      myX = myX + (int)(Math.random()*5)-1;
    else 
    myX = myX + (int)(Math.random()*5)-3;

    if (myX >=500)
      myX= 450;
    if (mouseY > myY) 
      myY = myY + (int)(Math.random()*5)-1;
    else 
    myY = myY + (int)(Math.random()*5)-3;


  }
}
