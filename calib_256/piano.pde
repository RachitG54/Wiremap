class piano
{
  int keys = 8;
  color keycolor = color(255,255,255);
  rain pianorain = new rain();
  float keyheight=25;
  float pressedheight=15;
  spiral[] colpiano = new spiral[50];
  int indspiral = 0;
  boolean bool1 = true;
  boolean bool2 = true;
  piano()
  {
    for(int i=0;i<50;i++)
    {
      colpiano[i] =new spiral();
    }
  }
 void create()
  {
    
  //println(time);
   if((time<starttime+31645-lapsetime)&&(time<starttime+16874-lapsetime))
       {
         
      pianorain.create();
      /*for(int i=0;i<wire;i++)
    {
      float y_bot_coord=0;
      float y_top_coord=28;
      float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
      float y_top_proj = y_top_coord*depth/z_by_ind[i];
      float y_height_proj = y_top_proj-y_bot_proj;
      fill(255,200);
      rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
    }*/
       }
       
       if((time>starttime+917-lapsetime)&&(time<starttime+1431-lapsetime))
       {
         lightup(7);//println(time+"Yeah");
       }
       else if((time<starttime+1664-lapsetime)&&(time>starttime+1431-lapsetime))
       lightup(6);
       else if((time<starttime+1932-lapsetime)&&(time>starttime+1664-lapsetime))
       lightup(7);
       else if((time>starttime+1932-lapsetime)&&(time<starttime+2408-lapsetime))
       lightup(6);
       else if((time>starttime+2408-lapsetime)&&(time<starttime+2907-lapsetime))
       lightup(4);
       else if((time>starttime+2907-lapsetime)&&(time<starttime+3190-lapsetime))
       lightup(6);
       else if((time>starttime+3190-lapsetime)&&(time<starttime+3454-lapsetime))
       lightup(5);
       else if((time>starttime+3454-lapsetime)&&(time<starttime+4033-lapsetime))
       lightup(6);
        else if((time>starttime+4033-lapsetime)&&(time<starttime+4618-lapsetime))
       lightup(3);
        else if((time>starttime+4618-lapsetime)&&(time<starttime+4897-lapsetime))
       lightup(5);
       else if((time>starttime+4897-lapsetime)&&(time<starttime+5209-lapsetime))
       lightup(4);
        else if((time>starttime+5209-lapsetime)&&(time<starttime+5934-lapsetime))
       lightup(5);
        else if((time>starttime+5934-lapsetime)&&(time<starttime+8712-lapsetime))
       lightup(1);
       else if((time>starttime+8712-lapsetime)&&(time<starttime+9419-lapsetime))
       lightup(8);
       else if((time>starttime+9419-lapsetime)&&(time<starttime+10086-lapsetime))
       {lightup(7);lightup(5);lightup(3);}
       else if((time>starttime+10086-lapsetime)&&(time<starttime+10326-lapsetime))
       lightup(6);
       else if((time>starttime+10326-lapsetime)&&(time<starttime+10600-lapsetime))
       lightup(7);
       else if((time>starttime+10600-lapsetime)&&(time<starttime+11083-lapsetime))
       lightup(6);
       else if((time>starttime+11083-lapsetime)&&(time<starttime+11604-lapsetime))
       lightup(4);
       else if((time>starttime+11604-lapsetime)&&(time<starttime+11896-lapsetime))
       lightup(6);
       else if((time>starttime+11896-lapsetime)&&(time<starttime+12156-lapsetime))
       lightup(5);
       else if((time>starttime+12156-lapsetime)&&(time<starttime+12664-lapsetime))
       lightup(6);
        else if((time>starttime+12664-lapsetime)&&(time<starttime+13185-lapsetime))
       lightup(3);
        else if((time>starttime+13185-lapsetime)&&(time<starttime+13463-lapsetime))
       lightup(5);
        else if((time>starttime+13463-lapsetime)&&(time<starttime+13769-lapsetime))
       lightup(4);
       else if((time>starttime+13769-lapsetime)&&(time<starttime+14420-lapsetime))
       lightup(5);
        else if((time>starttime+14420-lapsetime)&&(time<starttime+16874-lapsetime))
       {
         if(time>starttime+15864-lapsetime)lightup(1);
         lightup(2);
       }
       else if((time>starttime+16874-lapsetime)&&(time<starttime+18125-lapsetime))
       {first();}
       else if((time>starttime+18125-lapsetime)&&(time<starttime+19014-lapsetime))
       {secondary();}
       else if((time>starttime+19014-lapsetime)&&(time<starttime+19370-lapsetime))
       first();
       else if((time>starttime+19370-lapsetime)&&(time<starttime+19717-lapsetime))
       secondary();
       else if((time>starttime+19370-lapsetime)&&(time<starttime+20074-lapsetime))
       first();
       else if((time>starttime+20074-lapsetime)&&(time<starttime+20303-lapsetime))
       {secondary();}
       else if((time>starttime+20303-lapsetime)&&(time<starttime+21303-lapsetime))
       {first();}
       else if((time>starttime+21303-lapsetime)&&(time<starttime+21989-lapsetime))
       secondary();
       else if((time>starttime+21989-lapsetime)&&(time<starttime+22361-lapsetime))
       first();
       else if((time>starttime+22361-lapsetime)&&(time<starttime+22503-lapsetime))
       secondary();
       else if((time>starttime+22503-lapsetime)&&(time<starttime+22695-lapsetime))
       first();
       else if((time>starttime+22695-lapsetime)&&(time<starttime+23094-lapsetime))
       secondary();
       else if((time>starttime+23094-lapsetime)&&(time<starttime+23475-lapsetime))
       first();
       else if((time>starttime+23475-lapsetime)&&(time<starttime+25347-lapsetime))
       secondary();
       else if((time>starttime+25347-lapsetime)&&(time<starttime+25640-lapsetime))
       first();
       else if((time>starttime+25640-lapsetime)&&(time<starttime+26108-lapsetime))
       secondary();
       else if((time>starttime+26108-lapsetime)&&(time<starttime+26962-lapsetime))
       first();
       else if((time>starttime+26962-lapsetime)&&(time<starttime+28004-lapsetime))
       secondary();
       else if((time>starttime+28004-lapsetime)&&(time<starttime+30809-lapsetime))
       first();
       else if((time>starttime+30809-lapsetime)&&(time<starttime+31645-lapsetime))
       secondary();
       /*
        else if((time>starttime+15864-lapsetime)&&(time<starttime+18125-lapsetime))//14420,15864,16874,18125,13463
       {
         if(time>starttime+16874-lapsetime)lightup(1);
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
    int j = 24-x;
    colpiano[j].y_height = 1+j*2;
    colpiano[0].create();
    for(int i =1;i<=j;i++)
    {
    colpiano[i].theta = colpiano[i-1].theta;
    colpiano[i].y_height = 1+i*2;
    colpiano[i].create();
    }
  }
  void first()
  {
    lightup3(indspiral);if(bool1){indspiral++;bool1 = false;bool2 = true;}
  }
  void secondary()
  {
    lightup3(indspiral);if(bool2){indspiral++;bool2 = false;bool1 = true;}
  }
}
