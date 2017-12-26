class waterfall2
{
  int noofplanes = 4;
  ffalooxplane[] layer = new ffalooxplane[noofplanes];
  float distplanes =14;
  float firstheight = 3;
  ffalooxplane waterlayer;
  float waterspeed = -1.2; 
  waterfall2()
  {
    waterlayer = new ffalooxplane();
    waterlayer.thickness = 30;
    waterlayer.y_height = 90;
    for(int i =0;i<noofplanes;i++)
    {
      layer[i] = new ffalooxplane();
      layer[i].y_height = firstheight+distplanes*i;
      layer[i].opacity = 255- layer[i].y_height*4;
    }
  }
  void create()
  {
    waterlayer.y_height = waterlayer.y_height +waterspeed;
    if(waterlayer.y_height<-20)waterlayer.y_height = 90;
    waterlayer.create();
     for(int i =0;i<noofplanes;i++)
    {
      layer[i].create();
    }
  }
}
