class Thresh
{
  float m_posX = random(width);
  float m_posY = random(height);
  int m_speedX = 20;
  int m_speedY = 20;

  private PImage Timg;
  private PImage THimg;

  Thresh()
  {
    Timg = loadImage("Thresh.png");
    THimg = loadImage("TH.PNG");
  }

  void run()
  {
    move();
    display();
    boundary();
  }

  void display()
  {
    image(Timg, m_posX, m_posY, 120, 120);

    float THposX = m_posX - 55;
    float THposY = m_posY + 58;
    image(THimg, THposX, THposY, 60, 60);
  }

  void move()
  {
    m_posX -= random(-20, m_speedX);
    m_posY -= random(-20, m_speedX);
    m_posX += random(-20, m_speedX);
    m_posY += random(-20, m_speedX);
  }

  void boundary()
  {
    if ((m_posX + 60 >= width))
    {
      m_posX -= 10;
    }

    if ((m_posX + 60 <= 0))
    {
      m_posX += 10;
    }

    if ((m_posY + 60 >= height))
    {
      m_posY -= 10;
    }

    if ((m_posY + 60 <= 0))
    {
      m_posY += 10;
    }
  }
}