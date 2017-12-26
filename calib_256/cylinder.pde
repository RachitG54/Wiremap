class cylinder
{
  float centrex = 0;
  float centrez = depth-depth_unit*depth_levels/2;
  float radius = 40;
  float cylheighttop = 4;
  float cylheightbot = 0;
  float colh=129;
  float cols=255;
  float colb=255;
  void create()
  {
    for(int i = 0;i<wire;i++)
    {
      float x = x_by_ind[i]-centrex;
      float z = z_by_ind[i]-centrez;
      float mag = sqrt(sq(x)+sq(z));
      if(mag<radius)
      {
         colorMode(HSB);// sets color mode value 
          fill(colh, cols,colb);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
        float y_bot_coord=cylheightbot;
        float y_top_coord=cylheighttop;
        float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        float y_top_proj = y_top_coord*depth/z_by_ind[i];
        float y_height_proj = y_top_proj-y_bot_proj;
        rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
    }
  }
}
