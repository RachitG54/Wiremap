class ffalooxplane
{
  float centrex = 0;
  float centrez = depth-depth_levels*depth_unit/2;
  float radius = 30;
  float thickness = 0.2;
  float y_height=2;
  float opacity = 255;
  void create()
  {
    for(int i =0;i<wire;i++)
    {
      float x = x_by_ind[i]-centrex;
      float z = z_by_ind[i]-centrez;
      float mag = sqrt(sq(x)+sq(z));
      if(mag<radius)
      {
        float y_bot_coord=y_height;
        float y_top_coord=y_height+thickness;
        float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        float y_top_proj = y_top_coord*depth/z_by_ind[i];
        float y_height_proj = y_top_proj-y_bot_proj;;
         fill(255,opacity);
        rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
    }
  }
}

