class waterfall
{
  int noofplanes = 4;
  ffalooxplane[] layer = new ffalooxplane[noofplanes];
  ffalooxplane[] layer2 = new ffalooxplane[noofplanes];
  float distplanes =14;
  float firstheight = 3;
  ffalooxplane waterlayer;
  float waterspeed = -1.2;
 int count = 0;
 boolean flag = true; 
    float timer = 0;
  waterfall()
  {
    waterlayer = new ffalooxplane();
    waterlayer.thickness = 30;
    waterlayer.y_height = 90;
    for(int i =0;i<noofplanes;i++)
    {
      layer[i] = new ffalooxplane();
      layer[i].y_height = firstheight+distplanes*i;
      layer[i].opacity = 255- layer[i].y_height*4;
      layer2[i] = new ffalooxplane();
      layer2[i].y_height = firstheight+distplanes*i;
      layer2[i].opacity = 255- layer[i].y_height*4;
    }
  }
  void create()
  {
    waterlayer.y_height = waterlayer.y_height +waterspeed;
    if(waterlayer.y_height<-20)
    {
      waterlayer.y_height = 90;
      if(flag){count++;flag=false;if(count==3)timer = time;}
    }
    if((waterlayer.y_height>0)&&(waterlayer.y_height<20))
    {flag = true;}
    if(count==3)
    {
      waterlayer.thickness=500;waterlayer.y_height = 0;
      waterlayer.opacity = waterlayer.opacity - (time-timer)*0.006;
      for(int i =0;i<noofplanes;i++)
      {
        if(layer2[i].y_height <firstheight+distplanes*(i+0.25))
        layer2[i].y_height = layer2[i].y_height +0.02;
       layer2[i].create(); 
      }
      
    }
    waterlayer.create();
     for(int i =0;i<noofplanes;i++)
    {
      if((count==3)&&(layer[i].y_height >firstheight+distplanes*(i-0.25)))
      {layer[i].y_height = layer[i].y_height-0.02;}
      layer[i].create();
    }
  }
}
