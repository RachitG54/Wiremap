class pattern2
{
   ball sphere1 = new ball();
   ball sphere2 = new ball();
  float thetachangespeed = 0.04;
  float theta=0;
  void create()
  {
    noStroke();
    if (loaded == false) 
    {
      loader();
      loaded = true;
    fill(0);
    rect(0,0,width,height);
    }
    fill(0);
    rect(0,0,width,height);
  }
}
