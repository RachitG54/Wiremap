class cone
{
  float angle=PI/2;
  float anglespeed=-0.005;
  float y_height=(map_length/aspectrat)/2-10;
  float opacity=255;
  float opacityspeed=-1.25;
  PVector point = new PVector(0,(map_length/aspectrat)/2-10,depth-depth_levels*depth_unit/2);
  void create()
  {
    
    if(angle>(PI/8))
    {
      angle = angle+anglespeed;//println(angle);
      opacity = opacity + opacityspeed;
    }
    for(int i=0;i<wire;i++)
    {
      float y_bot_coord = y_height+cos(angle)*sqrt(sq(x_by_ind[i]-point.x)+sq(z_by_ind[i]-point.z));
      float y_top_coord = y_bot_coord+01;
      float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord* depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
      y_top_coord = y_height+cos(angle)*sqrt(sq(x_by_ind[i]-point.x)+sq(z_by_ind[i]-point.z));
      y_bot_coord = y_height-cos(angle)*sqrt(sq(x_by_ind[i]-point.x)+sq(z_by_ind[i]-point.z));
      y_top_proj = y_top_coord*depth/z_by_ind[i];
      y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      y_height_proj = y_top_proj - y_bot_proj;
    left1 = i * (width) / wire;
    top1 = (height/ppi - y_top_proj) * ppi;
    wide1 = string_pix_count;
    tall1 = y_height_proj*ppi;
    fill(255,0,0,opacity);
    rect(left1, top1, string_pix_count, tall1);
    y_top_coord = y_height-cos(angle)*sqrt(sq(x_by_ind[i]-point.x)+sq(z_by_ind[i]-point.z));
      y_bot_coord = y_top_coord-1;
      y_top_proj = y_top_coord*depth/z_by_ind[i];
      y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      y_height_proj = y_top_proj - y_bot_proj;
    left1 = i * (width) / wire;
    top1 = (height/ppi - y_top_proj) * ppi;
    wide1 = string_pix_count;
    tall1 = y_height_proj*ppi;
    fill(255);
    rect(left1, top1, string_pix_count, tall1);
    }
  }
}
