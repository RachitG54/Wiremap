class paddle
{
  parallelogram player = new parallelogram();
   void setpaddle(PVector v1,PVector v2,PVector v3)
   {
    player.setpolygon(v1,v2,v3,(depth_levels*depth_unit),depth - (depth_levels*depth_unit)); 
   }
   
    void create()
    {
    player.create();
    }
    void movedown()
    {
      if(player.leftbottom.y>=0)
      {
        player.leftbottom.y = player.leftbottom.y-0.2;
        player.sidea.y = player.sidea.y-0.2;
        player.sideb.y = player.sideb.y-0.2;
      }
    }
    void moveup()
    {
      if(player.sideb.y<=(map_length/aspectrat))
      {
        player.leftbottom.y = player.leftbottom.y+0.2;
        player.sidea.y = player.sidea.y+0.2;
        player.sideb.y = player.sideb.y+0.2;
      }
    }
}
