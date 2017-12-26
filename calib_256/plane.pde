class plane
{
  PVector normal = new PVector(1,1,0);
  float thickness =4;
  PVector point= new PVector(0,(map_length/aspectrat)/2-10,depth-(depth_unit*depth_levels)/2);
  float constant;
  float colh;//float cols;float colb;
  void initialize()
  {
    point.set(0,(map_length/aspectrat)/2-10,depth-(depth_unit*depth_levels)/2);
    thickness = 0.2;
    normal.set(1,1,0);
  }
  void create()
  {
    
    constant = (point.x*normal.x)+(point.y*normal.y)+(point.z*normal.z);
    for(int i =0;i<wire;i++)
    {
      if(normal.y==0)normal.y=0.1;
      float y_bot_coord = (constant-(z_by_ind[i]*normal.z)-(x_by_ind[i]*normal.x))/normal.y;
      float y_top_coord = (constant+thickness-(z_by_ind[i]*normal.z)-(x_by_ind[i]*normal.x))/normal.y;
       float y_top_proj = y_top_coord * depth / z_by_ind[i];                      // compensate for projection morphing IN INCHES
    float y_bot_proj = y_bot_coord * depth / z_by_ind[i];
    float y_height_proj = y_top_proj - y_bot_proj;
    float left1 = i * (width) / wire;
    float top1 = (height/ppi - y_top_proj) * ppi;
    float wide1 = string_pix_count;
    float tall1 = y_height_proj*ppi;
    
    colorMode(HSB);// sets color mode value 
   fill(colh, 255,255);//cycles through hue and brightness to expose a greater color palete
    colorMode(RGB);//sets color mode back to Red green and blue
    rect(left1, top1, string_pix_count, tall1);
    }
  }
}
