class pattern1
{
  plane left;
  plane right;
  float anglex;
  float anglespeed;
  void initialize()
  {
    left = new plane();
    right = new plane();

    anglex = PI/2;
    anglespeed = 0.020;
    left.normal.set(0,1,0);
    right.normal.set(0,-1,0);
  }
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
    anglex = anglex+anglespeed;
    left.normal.set(cos(anglex),sin(anglex),0);
    right.normal.set(cos(PI-anglex),sin(PI-anglex),0);
    left.create();
    right.create();
  }
}

