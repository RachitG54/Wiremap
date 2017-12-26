class mirrorequalizer
{
  int hVal;
  //rain rain1;
  float speed = 3;
  float xchange = 0;
  float waveheight=30;
  float wavelength = 2*PI/0.07;
  float diedownspeed = 4;
  float diedowny = 0;
  float amplitude=1.6;
  float amplitudespeed=-0.02;
  float ydiff = 10;
  float ybot = 0;
  int ydelta =1;
  float ydiffspeed = -0.05;
  float ydiffspeed2=0.08;
  mirrorequalizer()
  {
    hVal =0;
    //rain1 = new rain();
    //rain1.speedrain = rain1.speedrain *2;
  }
  void create()
  {
    xchange = xchange+speed;
    if((time>starttime+55000-lapsetime)&&(time<starttime+60000-lapsetime))
    {
     diedowny = diedowny+diedownspeed;
     amplitude = amplitude+amplitudespeed;
     ydiff = ydiff+ydiffspeed;
      if(ydiff<-2*ybot)ydiff = -2*ybot;
    if(amplitude<0)amplitude = 0;
    }
    else
    {
      
    ybot = ybot+ydelta*ydiffspeed2;
    if((ybot>4)||(ybot<-4))ydelta = -ydelta;
    }
   
     //rain1.create();
     for(int i = 0; i < fft.specSize(); i ++)// specSize is changing the range of analysis
     {
     
      for(int j=0;j<wire;j++)
       {
         
          float zcentre = depth-depth_levels*depth_unit/2;
          float zdiff = abs(z_by_ind[j]-zcentre);
          float val = diedowny-100-fft.getFreq(i/2)*10*(depth/z_by_ind[j])*(1-0.02*zdiff);
          val = val/3.5;
       float len1 = (i*1.4)*map_length/width;
       float len2 = ((i+1)*1.4)*map_length/width;
       float x =map_length/2+x_by_ind[j];
       
       if((x>len1)&&(x<len2))
        {
           smooth();
          colorMode(HSB);// sets color mode value 
          fill(hVal, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
          rect(j*(width/wire),height, string_pix_count,val );// draws a rect and alters its height based on the translated frequency
          rect(j*(width/wire),0, string_pix_count,-val );
                   
        }      
       }
      }
       hVal +=1;
      
      if(hVal > 255)
      {
        hVal = 0;
      }
      
      for (int i=0; i<wire; i++)
      {
        float y;
        y=amplitude*sin(2*PI*(x_by_ind[i]+xchange)/wavelength);
        //y=0;
        colorMode(HSB);// sets color mode value 
          fill((255-hVal)/2, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
        float y_bot_coord=waveheight+y-ydiff-ybot;
        float y_top_coord=waveheight+y+1-ydiff-ybot;
        float y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        float y_top_proj = y_top_coord*depth/z_by_ind[i];
        float y_height_proj = y_top_proj-y_bot_proj;
        rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
        colorMode(HSB);// sets color mode value 
          fill((255+hVal)/2, 255,255);//cycles through hue and brightness to expose a greater color palete
          colorMode(RGB);//sets color mode back to Red green and blue
        y_bot_coord=waveheight+y+ybot;
        y_top_coord=waveheight+y+1+ybot;
        y_bot_proj = y_bot_coord*depth/z_by_ind[i];
        y_top_proj = y_top_coord*depth/z_by_ind[i];
        y_height_proj = y_top_proj-y_bot_proj;
        rect(i*width/wire, height - (ppi*y_top_proj), string_pix_count, ppi*y_height_proj);
      }
       
  }
}
