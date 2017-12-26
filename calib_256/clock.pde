class clock
{
  int noofcompartments=8;  
  float centrex = 0;
  float centrey = (map_length/aspectrat)/2-4;
  float centrez = depth-(depth_unit*depth_levels)/2;
  float timetest = 0;
  void create()
  {
   //lightup2(0,true);lightup2(45,true);lightup2(-90,true);lightup2(-45,true);//lightup(6);lightup(3);lightup(2);  lightup(4);lightup(5);lightup(7);lightup(8);  
    if((time>starttime+49180-lapsetime)&&(time<starttime+49266-lapsetime))
    {
      lightup(1);//println(time+"Yeah");
    }
    else if((time>starttime+50178-lapsetime)&&(time<starttime+50274-lapsetime))
    {
      lightup(3);//println(time+"Yeah");
    }
    else if((time>starttime+51153-lapsetime)&&(time<starttime+51237-lapsetime))
    {
      lightup(5);//println(time+"Yeah");
    }
    else if((time>starttime+52149-lapsetime)&&(time<starttime+52221-lapsetime))
    {
      lightup(7);//println(time+"Yeah");
    }
    else if((time>starttime+53126-lapsetime)&&(time<starttime+53215-lapsetime))
    {
      lightup2(0,true);//println(time+"Yeah");
    }
    else if((time>starttime+54129-lapsetime)&&(time<starttime+54221-lapsetime))
    {
      lightup2(90,false);//println(time+"Yeah");
    }
    else if((time>starttime+55100-lapsetime)&&(time<starttime+55175-lapsetime))
    {
      lightup2(180,false);//println(time+"Yeah");
    }
    else if((time>starttime+56099-lapsetime)&&(time<starttime+56183-lapsetime))
    {
      lightup2(-90,true);//println(time+"Yeah");
    }
    else if((time>starttime+57078-lapsetime)&&(time<starttime+57154-lapsetime))
    {
      lightup(2);//println(time+"Yeah");
    }
    else if((time>starttime+58076-lapsetime)&&(time<starttime+58150-lapsetime))
    {
      lightup(4);//println(time+"Yeah");
    }
  }
  void lightup(int keyno)
  {
    if(keyno<=noofcompartments/2)
    {
      for(int i = 0;i<wire;i++)
      {
          float xdiff = x_by_ind[i]-centrex;
         if(xdiff>0)
         {
           if(keyno==1)
           {
            
               float y_bot_coord = xdiff+centrey;
              float y_top_coord=map_length/aspectrat;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(255);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
           else if(keyno==2)
           {
            
               float y_bot_coord = centrey;
              float y_top_coord=xdiff+centrey;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(255,0,0);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
           else if(keyno==3)
           {
            
               float y_bot_coord = -xdiff+centrey;
              float y_top_coord=centrey;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(0,255,0);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
           else if(keyno==4)
           {
            
               float y_bot_coord =0;
              float y_top_coord=-xdiff+centrey;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(0,0,255);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
         }
      }
    }
    else
    {
      for(int i = 0;i<wire;i++)
      {
          float xdiff = -x_by_ind[i]+centrex;
         if(xdiff>0)
         {
           if(keyno==8)
           {
            
               float y_bot_coord = xdiff+centrey;
              float y_top_coord=map_length/aspectrat;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(255);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
           else if(keyno==7)
           {
            
               float y_bot_coord = centrey;
              float y_top_coord=xdiff+centrey;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(255,0,0);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
           else if(keyno==6)
           {
            
               float y_bot_coord = -xdiff+centrey;
              float y_top_coord=centrey;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(0,255,0);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
           else if(keyno==5)
           {
            
               float y_bot_coord =0;
              float y_top_coord=-xdiff+centrey;
              float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
              float y_top_proj = y_top_coord*depth/z_by_ind[i];
              float y_height_proj = y_top_proj-y_bot_proj;
              fill(0,0,255);
              rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
             
           }
         }
      }
    }
  }
  void lightup2(int theta,boolean right)
  {
    for(int i =0;i<wire;i++)
    {
      float x = x_by_ind[i]-centrex;
      float y = z_by_ind[i]-centrez;
      float temp;
      temp = x*cos(theta)+y*sin(theta);
      y = -x*sin(theta)+y*cos(theta);
      x = temp;
      float anglewire = atan(y/x);
      if(right)
      {
          if((anglewire>0)&&(anglewire<45)&&(x_by_ind[i]>0))
          {
                  float y_bot_coord =0;
                  float y_top_coord=map_length/aspectrat;
                  float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
                  float y_top_proj = y_top_coord*depth/z_by_ind[i];
                  float y_height_proj = y_top_proj-y_bot_proj;
                  fill(0,0,255);
                  rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
          }
      }
      else
     {
       
          if((anglewire>0)&&(anglewire<45)&&(x_by_ind[i]<0))
          {
                  float y_bot_coord =0;
                  float y_top_coord=map_length/aspectrat;
                  float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
                  float y_top_proj = y_top_coord*depth/z_by_ind[i];
                  float y_height_proj = y_top_proj-y_bot_proj;
                  fill(0,0,255);
                  rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
          }
      
     }    
    }
  }
}
