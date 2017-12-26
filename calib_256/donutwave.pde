class donutwave
{
  float innerradius;
  float outerradius;
  float sineamp;
  float sinewaveang;
  float sineanglespeed;
  float particle;
  float sinecurrangle;
  float y_height;
  donutwave()
  {
    y_height = 24;
    innerradius = 14;
    outerradius = 48;
    sineamp=10;
    particle = 1;
    sinewaveang = PI;
    sineanglespeed = 0.02;
    sinecurrangle= 0;
  }
  void create()
  {
    sinecurrangle = sinecurrangle+sineanglespeed;
    for(int i =0;i<wire;i++)
    {
      float x = x_by_ind[i];
      float z = z_by_ind[i]-depth+depth_levels*depth_unit/2;
      float mag = sqrt(sq(x_by_ind[i])+sq(z));
      float angle = atan(abs(z)/abs(x));
       if((x<0)&&(z>0))angle = -angle+PI;
       if((x<0)&&(z<0))angle = angle+PI;
       if((x>0)&&(z<0))angle = -angle+2*PI;
      if((mag<outerradius)&&(mag>innerradius))
      {
        float y = sineamp*(sin(2*PI/sinewaveang*(sinecurrangle+angle)));
        float y_bot_coord=0;
        float y_top_coord=y_height+y;
        float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        float y_top_proj = y_top_coord*depth/z_by_ind[i];
        float y_height_proj = y_top_proj-y_bot_proj;
        float value = mag*120.0/sqrt(sq(48)+sq(30));
        colorMode(HSB);// sets color mode value 
          fill(value, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
         rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
    }
  }
}
