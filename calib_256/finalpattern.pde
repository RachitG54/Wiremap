class finalpattern
{
  int noofcylinders=6;
  cylinder[] cakes = new cylinder[noofcylinders];
  finalpattern()
  {
    for(int i=0;i<noofcylinders  ;i++)
    {
      
      cakes[i] = new cylinder();
    }
  }
  void create()
  {
    for(int i=0;i<noofcylinders;i++)
    {
      
      cakes[i].cylheighttop = (i+1)*10;
      cakes[i].cylheightbot = (i)*10;
      cakes[i].radius = (cakes[i].cylheighttop)*4/3.0;
      cakes[i].colh = (cakes[i].cylheightbot )%255;
      cakes[i].create();
    }
  }
}
