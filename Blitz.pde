class Blitz
{
  float posX = 8;
  float posY = height/2 - 60;
  float speedX = 5;
  float speedY = 5;

  float handX = posX + 120;
  float handY = posY + 60;

  private PImage Bimg;
  private PImage BHimg;

  boolean BlitzXleft;
  boolean BlitzXright;
  boolean BlitzYup;
  boolean BlitzYdown;

  boolean grabz;
  boolean grabx;

  Blitz()
  { 
    Bimg = loadImage("Blitzcrank.png");
    BHimg = loadImage("BH.PNG");
  }

  void run() 
  {
    help();

    move();
    keyReleased();
    grab();
    display();
    boundary();
  }

  void mapbackground()
  {
    float r;
    float b;
    r = map(posX, 0, width, 0, 225);
    b = map(posY, 0, width, 0, 225);
    background(r, 70, b);
  }

  void display()
  {
    image(Bimg, posX, posY, 120, 120);
  }

  void boundary()
  {
    if (posX <= 0)
    {
      posX = -1;
    }

    if (posX + 119 >= width)
    {
      posX = width - 120;
    }

    if (posY <= 0)
    {
      posY = -1;
    }

    if (posY + 119 >= height)
    {
      posY = height - 120;
    }
  }

  void grab()
  {
    float line1X = posX + 117;
    float line1Y = posY + 94;
    float line2X = handX + posX - 8;
    float line2Y = handY + posY - 288;

    float BHimgX = handX + posX - 8;
    float BHimgY = handY + posY - 324;

    line(line1X, line1Y, line2X, line2Y);
    image(BHimg, BHimgX, BHimgY, 60, 60);

    stroke(255);

    if (keyPressed)
    {
      if (key=='z')
      {
        grabz = true;
      }

      if (grabz==true)
      {
        handX += 20;
      }

      if (key=='x')
      {
        grabx = true;
      }

      if (grabx==true)
      {
        handX -= 20;
      }
    }
  } 

  void move()
  {
    if (keyPressed)
    {
      if (keyCode==UP)
      {
        BlitzYup = true;
      }

      if (keyCode==DOWN)
      {
        BlitzYdown = true;
      }

      if (keyCode==LEFT)
      {
        BlitzXleft = true;
      }

      if (keyCode==RIGHT)
      {
        BlitzXright = true;
      }

      if (BlitzYup == true)
      {
        posY -= speedY;
      }

      if (BlitzYdown == true)
      {
        posY += speedY;
      }

      if (BlitzXleft == true)
      {
        posX -= speedX;
      }

      if (BlitzXright == true)
      {
        posX += speedX;
      }
    }
  }

  void keyReleased()
  {
    if (keyCode==UP)
    {
      BlitzYup = false;
    }

    if (keyCode==DOWN)
    {
      BlitzYdown = false;
    }

    if (keyCode==LEFT)
    {
      BlitzXleft = false;
    }

    if (keyCode==RIGHT)
    {
      BlitzXright = false;
    }

    if (key=='z')
    {
      grabz = false;
    }

    if (key=='x')
    {
      grabx = false;
    }
  }

  void help()
  {
    textSize(10);
    fill(255);
    text("Control with UP, DOWN, LEFT, RIGHT keys. Press Z to grab and X to pull back. If Thresh tags you with his hook, you are done. Ignore Nautilus and don't press spacebar.", width/2 - 410, height/2 + 330);
  }
}