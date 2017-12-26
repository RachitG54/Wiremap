class rain
{
  float speedrain;
  float changecoord = map_length;
  float[] dropy = new float[wire];
  float val= (map_length)/(aspectrat*2);
  rain()
  {
    speedrain = -0.05;
    changecoord = map_length;
    for(int i =0;i<wire;i++)
    dropy[i] = random(map_length/aspectrat);
  }
  void create()
  {
    changecoord = ((changecoord+speedrain)%((int)(val))+(int)(val));
    for(int i =0;i<wire;i++)
    {
      float y_bot_coord=val+(changecoord+dropy[i])%((int)(val));
      float y_top_coord=y_bot_coord+1;
      float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      float y_top_proj = y_top_coord*depth/z_by_ind[i];
      float y_height_proj = y_top_proj-y_bot_proj;
      fill(234,152,64);
      rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
    }
  }
}
