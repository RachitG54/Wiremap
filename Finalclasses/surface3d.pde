class surface3d
{
  float surface3dx=0;
  float surface3dz=0;
  float starty = 10;
  float posconstant = 2;
  float yconstant = 3;
  float dot_height = 5;
  void create()
  {
    for(int i=0;i<wire;i++)
    {
    float final_amp = yconstant ;
    float y_bot_coord = 10+final_amp; 
    float y_top_coord = y_bot_coord+dot_height;
    float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    fill(255);                                                                    // draw a rectangle at that intersect
    // rect 1 is top dot for sliver
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    rect(left1, top1, string_pix_count, tall1);                                                        // draw a rectangle at that intersect
    }
  }
}
