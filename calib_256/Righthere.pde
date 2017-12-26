class Righthere
{
  float speed = 0.4;
  float xchangel = 0;
  float xchanger = 0;
  float waveheight=24;
  float wavelength = 2*PI/0.1;
  float timeconstant=600;
  float testtime = 32640;
  float amplitude=12;
  float amplitudespeed = 0.05;
  void create()
  {
    if((time>starttime+testtime+59300-lapsetime)&&(time<starttime+testtime+59912-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      xchangel = xchangel+speed*timeconstant/612;
    }
    else if((time>starttime+testtime+59912-lapsetime)&&(time<starttime+testtime+60879-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchanger = xchanger+speed*timeconstant/967;
    }
    else if((time>starttime+testtime+60879-lapsetime)&&(time<starttime+testtime+61813-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchangel = xchangel+speed*timeconstant/934;
    }
    else if((time>starttime+testtime+61813-lapsetime)&&(time<starttime+testtime+62799-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchanger = xchanger+speed*timeconstant/986;
    }
    else if((time>starttime+testtime+62799-lapsetime)&&(time<starttime+testtime+63704-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchangel = xchangel+speed*timeconstant/905;
    }
    else if((time>starttime+testtime+63704-lapsetime)&&(time<starttime+testtime+64700-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchanger = xchanger+speed*timeconstant/996;
    }
    else if((time>starttime+testtime+64700-lapsetime)&&(time<starttime+testtime+65711-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchangel = xchangel+speed*timeconstant/1011;
    }
    else if((time>starttime+testtime+65711-lapsetime)&&(time<starttime+testtime+66596-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchanger = xchanger+speed*timeconstant/885;
    }
    else if((time>starttime+testtime+66596-lapsetime)&&(time<starttime+testtime+67655-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchangel = xchangel+speed*timeconstant/941;
    }
    else if((time>starttime+testtime+67655-lapsetime)&&(time<starttime+testtime+68618-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580,70562
    {
      
      xchanger = xchanger+speed*timeconstant/963;
    }
    else if((time>starttime+testtime+68618-lapsetime)&&(time<starttime+testtime+69580-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchangel = xchangel+speed*timeconstant/962;
    }
    else if((time>starttime+testtime+69580-lapsetime)&&(time<starttime+testtime+70562-lapsetime))//59912,60879,61813,62799,63704,64700,65711,66596,67655,68618,69580
    {
      
      xchanger = xchanger+speed*timeconstant/982;
    }
    else if((time>starttime+131810-lapsetime)&&(time<starttime+132870-lapsetime))
   {
                 
        xchangel = xchangel+speed*timeconstant/940;
   }
   
    else if((time>starttime+132870-lapsetime)&&(time<starttime+133580-lapsetime))
   {
                 
        xchanger = xchanger+speed*timeconstant/710;
   }
   
   else if((time>starttime+133580-lapsetime)&&(time<starttime+136580-lapsetime))
   {
                 
        amplitude = amplitude - amplitudespeed;
        if(amplitude<0)amplitude=0;
   }
      for (int i=0; i<wire; i++)
      {
        float y;
        y=amplitude*sin(2*PI*(x_by_ind[i]+xchangel)/wavelength);
        float val = xchangel*2/map_length*255;
        val = ((((int)(val))/8)%50);
        val = 50-val;
        colorMode(HSB);// sets color mode value 
          fill(val, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
        float y_bot_coord=waveheight+y;
        float y_top_coord=waveheight+y+1;
        float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        float y_top_proj = y_top_coord*depth/z_by_ind[i];
        float y_height_proj = y_top_proj-y_bot_proj;
        if(x_by_ind[i]<0)
        rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
      for (int i=0; i<wire; i++)
      {
        float y;
        y=amplitude*sin(2*PI*(x_by_ind[i]+xchanger)/wavelength);
        float val = xchanger*2/map_length*255;
        val = ((((int)(val))/8)%50);
        val = 50-val;
        colorMode(HSB);// sets color mode value 
          fill(val, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
        float y_bot_coord=waveheight+y;
        float y_top_coord=waveheight+y+1;
        float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        float y_top_proj = y_top_coord*depth/z_by_ind[i];
        float y_height_proj = y_top_proj-y_bot_proj;
        if(x_by_ind[i]>0)
        rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
  }
}
