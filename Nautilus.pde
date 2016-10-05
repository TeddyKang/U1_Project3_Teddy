class Nautilus {

  float mm_posX;
  float mm_posY;

  float mm_speedX = 10;

  private PImage mm_img;
  private PImage mm_NH;

  Nautilus() {

    mm_img = loadImage("Nautilus.PNG");
    mm_NH = loadImage("NH.PNG");
  }

  void run()
  {
    display();
    grab();
  }

  void display()
  {
    mm_posX = 600;
    mm_posY = 300;
    image(mm_img, mm_posX, mm_posY, 120, 120);
  }

  void grab() {
    float mm_NHX = mm_posX;
    float mm_NHY = mm_posY + 200;
    image(mm_NH, mm_NHX, mm_NHY - 80, 60, 60);
  }
}