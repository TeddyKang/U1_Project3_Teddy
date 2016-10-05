Blitz blitz;
Thresh thresh;
Nautilus nautilus;

float[] tm;

PImage backgroundimg;
PImage teemoimg;

void setup()
{
  fullScreen();

  blitz = new Blitz();
  thresh = new Thresh();
  nautilus = new Nautilus();

  tm = new float[50];

  backgroundimg = loadImage("SummonerRift.PNG");
  teemoimg = loadImage("Teemo.PNG");
}

void draw()
{
  print("x:"); 
  println(mouseX);

  print("y:"); 
  println(mouseY);

  blitz.mapbackground();

  if (key == ' ')
  {
    for (int i=0; i<50; i++)
    {
      tm[i] = random(width);
      image(teemoimg, tm[i], random(height), 50, 50);
    }
  }

  blitz.run();

  thresh.run();

  nautilus.run();
}