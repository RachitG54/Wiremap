class pianoend
{
  int keys = 8;
  color keycolor = color(255,255,255);
  rain2 pianorain = new rain2();
  float keyheight=25;
  float pressedheight=15;
  spiral[] colpiano = new spiral[50];
  int indspiral = 0;
  boolean bool1 = true;
  boolean bool2 = true;
  float testtime = 0;
  pianoend()
  {
    for(int i=0;i<50;i++)
    {
      colpiano[i] =new spiral();
    }
  }
 void create()
  {
    
  //println(time);
   if((time>starttime+testtime+233322-lapsetime)&&(time<starttime+testtime+247188-lapsetime))
       {
         
      //pianorain.create();
          
       }
       float timefrustrate = time-starttime-testtime-232322+lapsetime;
       int j = ((int)timefrustrate)/400;
       if(time<starttime+testtime+240800-lapsetime)
       {
       if(j%2==0)first();
       else secondary();}
       if((time>starttime+testtime+243567-lapsetime)&&(time<starttime+testtime+247188-lapsetime))
       {first();}
       else if((time>starttime+testtime+242163-lapsetime)&&(time<starttime+testtime+243567-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+240800-lapsetime)&&(time<starttime+testtime+242163-lapsetime))
       {first();}
       /*if((time>starttime+testtime+232322-lapsetime)&&(time<starttime+testtime+233822-lapsetime))
       {first();}
       else if((time>starttime+testtime+233822-lapsetime)&&(time<starttime+testtime+233322-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+233322-lapsetime)&&(time<starttime+testtime+233822-lapsetime))
       {first();}
       else if((time>starttime+testtime+233822-lapsetime)&&(time<starttime+testtime+234322-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+234322-lapsetime)&&(time<starttime+testtime+234822-lapsetime))
       {first();}
       else if((time>starttime+testtime+234822-lapsetime)&&(time<starttime+testtime+235322-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+235322-lapsetime)&&(time<starttime+testtime+235822-lapsetime))
       {first();}
       else if((time>starttime+testtime+235822-lapsetime)&&(time<starttime+testtime+236322-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+236322-lapsetime)&&(time<starttime+testtime+236822-lapsetime))
       {first();}
       else if((time>starttime+testtime+236822-lapsetime)&&(time<starttime+testtime+237322-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+237322-lapsetime)&&(time<starttime+testtime+237822-lapsetime))
       {first();}
       else if((time>starttime+testtime+237822-lapsetime)&&(time<starttime+testtime+238322-lapsetime))
       {secondary();}
       else if((time>starttime+testtime+238322-lapsetime)&&(time<starttime+testtime+238822-lapsetime))
       {first();}
       */
       /*
        else if((time>starttime+testtime+15864-lapsetime)&&(time<starttime+testtime+18125-lapsetime))//14420,15864,16874,18125,13463
       {
         if(time>starttime+testtime+16874-lapsetime)lightup(1);
         lightup(2);
       }*/
  }
  void lightup(int keyno)
  {
    for(int i=0;i<wire;i++)
    {
      float x = x_by_ind[i]+(map_length/2);
      if((x<keyno*map_length/keys)&&(x>(keyno-1)*map_length/keys))
      {
        float y_bot_coord=0;
      float y_top_coord=28;
      float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      float y_top_proj = y_top_coord*depth/z_by_ind[i];
      float y_height_proj = y_top_proj-y_bot_proj;
      fill(234,152,64);
      rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
        
      }
    }
  }
  void lightup2(int keyno)
  {
     for(int i=0;i<wire;i++)
    {
      float x = x_by_ind[i]+(map_length/2);
      if((x<keyno*map_length/keys)&&(x>(keyno-1)*map_length/keys))
      {
        fill(keycolor);
        float y_bot_coord=0;
      float y_top_coord=pressedheight;
      float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      float y_top_proj = y_top_coord*depth/z_by_ind[i];
      float y_height_proj = y_top_proj-y_bot_proj;
      fill(255);
      rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
        
      }
      else
      {
        fill(keycolor);
        float y_bot_coord=0;
      float y_top_coord=keyheight;
      float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      float y_top_proj = y_top_coord*depth/z_by_ind[i];
      float y_height_proj = y_top_proj-y_bot_proj;
      fill(255);
      rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
    }
  }
  void lightup3(int j)
  {
    
    colpiano[j].y_height = 4+j*2;
    colpiano[0].create();
    for(int i =1;i<=j;i++)
    {
    colpiano[i].theta = colpiano[i-1].theta;
    colpiano[i].create();
    }
  }
  void lightup4(int x)
  {
    if(x<26)
    {
    int j = 23-x;
    colpiano[j].y_height = 1+j*2;
    colpiano[0].create();
    for(int i =1;i<=j;i++)
    {
    colpiano[i].theta = colpiano[i-1].theta;
    colpiano[i].y_height = 1+i*2;
    colpiano[i].create();
    }
    }
    else ;
    
  }
  void first()
  {
    lightup4(indspiral);if(bool1){indspiral++;bool1 = false;bool2 = true;}
  }
  void secondary()
  {
    lightup4(indspiral);if(bool2){indspiral++;bool2 = false;bool1 = true;}
  }
}
