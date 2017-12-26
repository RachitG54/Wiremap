class helix
{
  float centrex = 0;
  float centrex2 = 0;
  float speedx= 0.0;
  float centrez = depth - (depth_levels*depth_unit)/2;
  float radius = 6;
  float pitch = 100;
  float theta =0;
  float thetachangespeed = 0.04;
  float thickness = 9;
  float heightparticle = 1;
  int noofturns = 9;
  float y_height=0;
  float y_heightspeed= -0.2;
  helix()
  {
    centrex = 0;
    centrez = depth - (depth_levels*depth_unit)/2;
    radius = 6;
    pitch = 9;
    y_height=40;
    thickness = 18;
  }
  void create()
  {
    theta = theta +thetachangespeed;
    y_height = y_height+y_heightspeed;
    y_height = (y_height+40)%map_length-40;
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
      if((mag>radius)&&(mag<radius+thickness))
      {
        float angle;
        
        float c = pitch/(2*PI);
        for(int j=0;j<noofturns;j++)
        {
            
              angle = atan(abs(z)/abs(x));
              if((x<0)&&(z>0))angle = -angle+PI;
              if((x<0)&&(z<0))angle = angle+PI;
              if((x>0)&&(z<0))angle = -angle+2*PI;
              angle=angle+2*PI-theta;
              if(angle>2*PI)angle = angle-2*PI;
            float y_bot_coord=pitch*angle+(j)*pitch*2*PI;
            float y_top_coord=pitch*angle+heightparticle+j*pitch*2*PI;
            float y_bot_proj = y_bot_coord;//*depth/z_by_ind[i];
            float y_top_proj = y_top_coord;//*depth/z_by_ind[i];
            float y_height_proj = y_top_proj-y_bot_proj;
            fill(255);
            rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
            x = -x;z = -z;  
              angle = atan(abs(z)/abs(x));
              if((x<0)&&(z>0))angle = -angle+PI;
              if((x<0)&&(z<0))angle = angle+PI;
              if((x>0)&&(z<0))angle = -angle+2*PI;
              angle=angle+2*PI-theta;
              if(angle>2*PI)angle = angle-2*PI;
            y_bot_coord=pitch*angle+(j)*pitch*PI*2;
            y_top_coord=pitch*angle+heightparticle+j*pitch*PI*2;
            y_bot_proj = y_bot_coord;//*depth/z_by_ind[i];
            y_top_proj = y_top_coord;//*depth/z_by_ind[i];
            y_height_proj = y_top_proj-y_bot_proj;
            fill(255);
            rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
            
            
        }
       
      }
    }
    
  }    
}
  
