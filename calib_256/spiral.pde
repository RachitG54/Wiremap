class spiral
{
   float centrex = 0;
  float centrez = depth - (depth_levels*depth_unit)/2;
  float heightparticle = 0.5;
  float y_height=10;
  float theta = 0;
  float thetachangespeed=0.02;
  float radius = 40;
  float angle2=0;
  spiral()
  {
    centrex = 0;
    centrez = depth - (depth_levels*depth_unit)/2;
    radius = 40;
    y_height=10;
  }
  void create()
  {
    theta = theta +thetachangespeed;
    float x,z;
    for(int i =0;i<wire;i++)
    {
      x = x_by_ind[i]-centrex;
      z = z_by_ind[i]-centrez;
      float temp;
      temp = x*cos(theta)+z*sin(theta);
      z = -x*sin(theta)+z*cos(theta);
      x=temp;
      float mag = (sqrt(sq(x)+sq(z)));
      if(mag<radius)
      {
        
              float angle;
              angle = atan(abs(z)/abs(x));
              if((x<0)&&(z>0))angle = -angle+PI;
              if((x<0)&&(z<0))angle = angle+PI;
              if((x>0)&&(z<0))angle = -angle+2*PI;
              angle = angle*180/PI;//if(i==45)println(angle);
              //if(((angle>0)&&(angle<36))||((angle>72)&&(angle<108))||((angle>144)&&(angle<180))||((angle>216)&&(angle<252))||((angle>288)&&(angle<324)))
              if(((angle>0)&&(angle<60))||((angle>120)&&(angle<180))||((angle>240)&&(angle<300)))
              {
            float y_bot_coord=y_height;
            float y_top_coord=y_height+heightparticle;
            float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
            float y_top_proj = y_top_coord*depth/z_by_ind[i];
            float y_height_proj = y_top_proj-y_bot_proj;
             colorMode(HSB);// sets color mode value 
          fill(y_height*7, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
            rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
              }
            
        
       
      }
    }
    
  }
}
